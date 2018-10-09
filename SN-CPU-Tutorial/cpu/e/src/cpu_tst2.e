/*-------------------------------------------------------------------------
File name   : cpu_tst2.e
Title       : Functional Test 2
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : Constrained random approach
            : All possible legal instructions
            : Higher focus on the more common instructions:
            :   - Logic operations
            :   - Arithmetic operations
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc.
-------------------------------------------------------------------------*/

<'
import cpu_top;

extend cpu_instr_s {
    keep soft opcode == select {
        10 : [JMP, JMPC, CALL, RET, NOP];  // Control flow operation
        30 : [ADD, ADDI, SUB, SUBI];       // Arithmetic operation 
        30 : [AND, ANDI, XOR, XORI];       // Logic operation
    };
};
'>
