/*-------------------------------------------------------------------------
File name   : cpu_instr.e
Title       : Basic structure of CPU instructions
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : This module defines the basic structure of CPU instructions, 
            : according to the design and interface specifications.
            :
            : All instructions are defined as
            :   Opcode   Operand1   Operand2
            : 
            : There are 2 types of instructions
            :
            : Register Instruction:
            :   bit | 7 6 5 4 | 3 2 | 1 0 | 
            :       | opcode  | op1 | op2 |
            :                        (reg)
            :
            : Immediate Instruction:
            :   byte | 1                     | 2               |
            :    bit | 7 6 5 4 | 3 2 | 1 0   | 7 6 5 4 3 2 1 0 |
            :        | opcode  | op1 | don't | op2             |
            :                        | care  |
            : 
            : Register instructions are
            :   ADD, SUB, AND, XOR, RET, NOP
            : 
            : Immediate instructions are
            :   ADDI, SUBI, ANDI, XORI, JMP, JMPC, CALL
            : 
            : Registers are REG0, REG1, REG2, REG3
            :
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
type cpu_opcode_t: [                    // Opcodes
    ADD, ADDI, SUB, SUBI,
    AND, ANDI, XOR, XORI,
    JMP, JMPC, CALL, RET,
    NOP 
] (bits: 4);

type cpu_reg_t: [                      // Register names
    REG0, REG1, REG2, REG3
] (bits: 2);

struct cpu_instr_s {
    // defines opcode, operand 1 and instruction kind

    
    // defines 2nd op of reg instruction 

        
    // defines 2nd op of imm instruction 

    
    // defines legal opcodes for reg instr

        
    // defines legal opcodes for imm instr

        
    // ensures 4-bit addressing scheme 

};

extend sys {
    // creates the stream of instructions

};
'>
 

