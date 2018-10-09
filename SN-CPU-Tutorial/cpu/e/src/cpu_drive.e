/*-------------------------------------------------------------------------
File name   : cpu_drive.e
Title       : Interface to DUT drive and sample
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : Specifies the interface/protocols between Specman and DUT.
            : Specman TCMs drive instructions into the DUT.  
            : TCMs also sample signals and variables of the DUT.
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
//import cpu_refmodel;

extend sys {
    smp: signal_map_u is instance;

    event cpuclk is fall(smp.clk_p$)@sys.any;
    
    cpu_env : cpu_env_s;
    cpu_dut : cpu_dut_s;
    //cpu_refmodel : cpu_refmodel_s;
    
    connect_pointers() is also {
        cpu_env.smp = smp;
        cpu_dut.smp = smp;
    };
};
'>

<'
struct cpu_env_s {
   !smp: signal_map_u;

   reset_cpu() @sys.cpuclk is {       
      smp.rst_p$ =  0;
      wait [1] * cycle;
      smp.rst_p$ =  1;
      wait [5] * cycle;
      //sys.cpu_refmodel.reset();		// reset reference model 
      smp.rst_p$ =  0;
   };

   drive_one_instr(instr: cpu_instr_s) @sys.cpuclk is {
      var fill0 : uint(bits : 2) = 0b00;

      wait until rise(smp.fetch1_p$);

      emit instr.start_drv_DUT;

      if instr.kind == reg then {
         smp.data_p$ = pack(packing.high, instr);
      } else {
         // immediate instruction
         smp.data_p$ = pack(packing.high, instr.opcode, instr.op1, fill0);
         wait until rise(smp.fetch2_p$);
         smp.data_p$ = pack(packing.high, instr.as_a(imm cpu_instr_s).op2);
      };

      wait until rise(smp.exec_p$);

      // execute instr in refmodel		
      //sys.cpu_refmodel.execute(instr, sys.cpu_dut);  
   };

   !next_instr : cpu_instr_s;
   num_instrs  : uint;
   keep soft num_instrs in [60..80];

   gen_and_drive_instrs() @sys.cpuclk is { 

      for i from 0 to num_instrs do {
         gen next_instr;
         sys.instrs.add(next_instr);
         drive_one_instr(next_instr);
      };
   };

   drive_pregen_instrs() @sys.cpuclk is {

      for i from 0 to sys.instrs.size() - 1 {
         drive_one_instr(sys.instrs[i]);

      };
   }; 

   drive_cpu() @sys.cpuclk is {

      reset_cpu();

      if sys.instrs.size() > 0 then {
         print sys.instrs;
         drive_pregen_instrs();
      } else {
         gen_and_drive_instrs();
      };

      wait [1] * cycle;
      stop_run();
   };

   run() is also {
      start drive_cpu();
   };
};

extend cpu_instr_s {
   event start_drv_DUT;
};
'>
