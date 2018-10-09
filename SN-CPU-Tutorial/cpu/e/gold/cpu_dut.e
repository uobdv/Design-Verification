/*-------------------------------------------------------------------------
File name   : cpu_dut.e
Title       : CPU Model
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : This module defines the architecture and execution of the CPU.
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
type cpu_FSM_type_t : [strt_st = 1, fetch1_st = 2, fetch2_st = 3, exec_st = 4, 
                       udef_st = 0];

//Define State Machine 
define   strt_st     1; 
define   fetch1_st   2; 
define   fetch2_st   3; 
define   exec_st     4; 
define   udef_st     0;

struct cpu_dut_s {
   !smp: signal_map_u;
    
   event dutclk is fall(smp.clk_p$) @sys.any;

   imm_fld     : byte;
   pc          : byte;
   pcs         : byte;
   opcode      : cpu_opcode_t;
   r0          : byte;
   r1          : byte;
   r2          : byte;
   r3          : byte;
 
   des         : byte;
   src         : byte;
   alures      : int (bits : 9);

   update_reg  : int (bits : 2);
   src_reg     : int (bits : 2);
   is_imm      : bool;

   reset() is {
      r0   = 0;
      r1   = 0;
      r2   = 0;
      r3   = 0;
      pc   = 0;
      pcs  = 0;

      smp.strt_p$   = 1;
      smp.fetch1_p$ = 0;
      smp.fetch2_p$ = 0;
      smp.exec_p$   = 0;
      smp.curr_FSM_p$ = strt_st;
      smp.next_FSM_p$ = strt_st;
      smp.carry_p$ = 0;
      smp.zero_p$  = 0;
      opcode  = NOP;
   };

   run_DUT() @dutclk is {
      smp.curr_FSM_p$ = udef_st; 
      smp.next_FSM_p$ = udef_st;
      while TRUE {
         wait [1] * cycle;

         // update signals
         smp.strt_p$   = (smp.next_FSM_p$ == strt_st).as_a(bit);
         smp.fetch1_p$ = (smp.next_FSM_p$ == fetch1_st).as_a(bit);
         smp.fetch2_p$ = (smp.next_FSM_p$ == fetch2_st).as_a(bit);
         smp.exec_p$   = (smp.curr_FSM_p$ == exec_st).as_a(bit);  

         wait [1] * cycle;
         smp.curr_FSM_p$ = smp.next_FSM_p$;
         if (smp.rst_p$ == 1) then {
            reset();
         } else {
            case smp.curr_FSM_p$ {
               strt_st: {
                  smp.next_FSM_p$ = fetch1_st;
               };
               fetch1_st: {
                  opcode = (smp.data_p$[7:4]).as_a(cpu_opcode_t);
                  case smp.data_p$[3:2] {
                     3 : { des = r3; };
                     2 : { des = r2; };
                     1 : { des = r1; };
                     0 : { des = r0; };
                  };
                  update_reg = smp.data_p$[3:2];
                  is_imm = (opcode in [ADDI, SUBI, ANDI, XORI, JMP, JMPC, CALL]); 
                  if is_imm then {
                     smp.next_FSM_p$ = fetch2_st;
                  } else {
                     src_reg     = smp.data_p$[1:0];
                     case smp.data_p$[1:0] {
                        3 : { src = r3; };
                        2 : { src = r2; };
                        1 : { src = r1; };
                        0 : { src = r0; };
                     };
                     smp.next_FSM_p$ = exec_st;
                  };
               };

               fetch2_st: {
                  imm_fld = smp.data_p$;
                  src     = smp.data_p$;
                  smp.next_FSM_p$ = exec_st;
               };
               exec_st: { 
                  // ALU 
                  alures = 0;
                  case opcode {
                     [ADD, ADDI]: { alures = des + src; }; 
                     [SUB, SUBI]: { alures = des - src; }; 
                     [XOR, XORI]: { alures = des ^ src; }; 
                     [AND, ANDI]: { alures = des & src; }; 
                  };

                  // compute next PC
                  case opcode {
                     [ADD, SUB, XOR, AND, NOP]: {pc = pc +1;};
                     [ADDI, SUBI, XORI, ANDI] : {pc = pc +2;};
                     JMP:  { pc = imm_fld; };
                     JMPC: {  
                        if (smp.carry_p$.as_a(bool)) then {
                           if (imm_fld > 10) then {
                              wait [2] * cycle;
                           };
                           pc = imm_fld;
                        } else {
                           pc = pc + 2;
                        };
                     };

                     CALL: {
                        pcs = pc + 2;   // stack.add(pc+2);
                        pc = imm_fld;
                     };

                     RET: { 
                        pc = pcs; 
                     };    // pc = stack.pop();
                  };

                  // update reg, zero and carry 
                  case update_reg {
                     3 : { r3 = alures[7:0]; };
                     2 : { r2 = alures[7:0]; };
                     1 : { r1 = alures[7:0]; };
                     0 : { r0 = alures[7:0]; };
                  }; 
                  
                  if (opcode in [ADD .. XORI]) then {
                     smp.zero_p$ = (alures == 0).as_a(bit);
                  } else {
                     smp.zero_p$ = 0;
                  };
                  
                  if (opcode in [ADD .. SUBI]) then {
                     smp.carry_p$ = alures[8:8];
                  } else {
                     smp.carry_p$ = 0;
                  };
		      
                  smp.exec_p$ = 1;    // instruction has been executed
                  print_instr();
                  instrs_index += 1;
                  smp.next_FSM_p$ = fetch1_st;
               };  // exec_st

            };  // case

         };  // else

      };  // while true

   };  // run_DUT

   run() is also {
      start run_DUT();
   };

   // Code used to print executed instructions
   instrs_index : uint;     
   keep soft instrs_index == 0;

   print_instr() is {
      outf("DUT executing instr %3d : \t", instrs_index);

      if (is_imm) then {
         out(append(opcode, "\t", "REG", update_reg, ", @", imm_fld));
      } else {
         out(append(opcode, "\t", "REG", update_reg, ", REG", src_reg));
      };
   };  
};
'>
