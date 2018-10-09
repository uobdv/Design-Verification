/*-------------------------------------------------------------------------
File name   : cpu_tst1.e
Title       : Functional Test 1
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : Go-no-go test for ADD, ADDI
            : 5 instructions with the following rules
            : opcode - ADD and ADDI only
            : op1    - REG0 only 
            : op2    - REG1 only           (reg instr)
            :          or address 0x5 only (imm instr)
            : 
            : Small memory model only
            :
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
import cpu_top;

extend cpu_instr_s {
    // test constraints

};

extend sys {
    // generate 5 instructions

};

extend sys { 
    post_generate() is also { 
        gen instrs;        // start generating stream of instructions 
    }; 
};
'>
