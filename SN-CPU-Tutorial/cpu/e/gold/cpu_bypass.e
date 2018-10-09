/*------------------------------------------------------------------------- 
File name   : cpu_bypass.e
Title       : Patch to bypass DUT bug
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc.
Created     : 12-1-2002
Description : BUG - Input stimulus when (opcode = JMPC and op2 > 10 )
            : Checker Msg - PROTOCOL ERROR fetch1 must be asserted 1 cycle 
            : after exec is done
            : DUT version v1.2
--------------------------------------------------------------------------- 
Copyright 2002-2013 (c) Cadence Design Systems, Inc.
-------------------------------------------------------------------------*/ 

<'
extend imm cpu_instr_s {

    keep (opcode == JMPC) => op2 < 10 ;

};
'>
