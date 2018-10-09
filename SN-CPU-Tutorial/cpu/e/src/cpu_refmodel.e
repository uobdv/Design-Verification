/*-------------------------------------------------------------------------
File name   : cpu_refmodel.e
Title       : CPU Reference Model
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc.
Created     : 12-1-2002
Description : This module defines the expected behavior of the DUT.
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc.
-------------------------------------------------------------------------*/

<'
import cpu_dut;

struct cpu_refmodel_s {
   
   regs[4]	:list of byte;
   pc		:byte;			// Current PC
   stack	:list of byte;		// stack of PC values

   fetch(r:cpu_reg_t):byte is {
      return(regs[r.as_a(int)]);
   };

   update(r:cpu_reg_t, val:byte) is {	// compute an ALU function
      regs[r.as_a(int)] = val;
   };

   compare(r:byte, val:byte):bool is {	// compare against a reg
      result = (r == val);
      if ! result { 
         out("Register has ",r, " While HDL has ", val);
      }; 
   };

   jump(val: byte) is {
      pc = val;
   };

   jumpc(cpu_dut: cpu_dut_s, val: byte) is {
      // cheated a bit here
      pc = cpu_dut.pc;
      //if (cpu_dut.carry == 1) then {pc = val)}};
      //pc = val;
   };
   call(val: byte) is {
      stack.add(pc+2);
      pc = val;
   };

   ret(cpu_dut: cpu_dut_s) is {
      // cheated a bit here
      pc = cpu_dut.pc;
      //pc = stack.pop();
   };

   reset() is {
      for i from 0 to 3 do {
         regs[i] = 0;		// Initialize Specman reference regs
      };
      pc = 0;
   };

   execute(instr: cpu_instr_s, cpu_dut: cpu_dut_s) is {
      var op2_val : byte;
      var reg_instr : reg cpu_instr_s;
      var imm_instr : imm cpu_instr_s;

      // compute next PC
      case instr.opcode {
         [ADD, SUB, XOR, AND, NOP]: {jump(pc +1);};
         [ADDI, SUBI, XORI, ANDI, JMPC]: {jump(pc +2);};
      };
      if (instr.kind == reg) then{
         reg_instr = instr.as_a(reg cpu_instr_s);
         op2_val = fetch(reg_instr.op2);
      } else {
         imm_instr = instr.as_a(imm cpu_instr_s);
         op2_val = imm_instr.op2;
      };
      // compute next CPU State  
      case instr.opcode {
         [ADD, ADDI]: {update(instr.op1, fetch(instr.op1) + op2_val)};
         [SUB, SUBI]: {update(instr.op1, fetch(instr.op1) - op2_val)};
         [XOR, XORI]: {update(instr.op1, fetch(instr.op1) ^ op2_val)};
         [AND, ANDI]: {update(instr.op1, fetch(instr.op1) & op2_val)};
         JMP:	 {jump(op2_val)};
         JMPC:	 {jumpc(cpu_dut, op2_val);};
         //if (cpu_dut.carry == 1) then {jump(op2_val)}};
         CALL:	 {call(op2_val)};
         RET:	 {ret(cpu_dut)};
      };
   };

   print_info() is {
      out("	State: ");
      for each in regs { 
         out(append("  	Reg",index," = ", it));
      };
      out(append(" 	PC = ",pc));
   };
};
'>
