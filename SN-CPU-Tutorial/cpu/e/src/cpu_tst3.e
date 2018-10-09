/*-------------------------------------------------------------------------
File name   : cpu_tst3.e
Title       : Functional Test 3
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : Corner Case of JMPC opcode 
            : Goal - Test JMPC opcode when "carry" bit is asserted. 
            :
            : Put high weight on arithmetic instructions to create higher
            : probability of "carry" bit assertion. 
            :
            : Monitor DUT, when "carry" bit is asserted, generate JMPC.
            :
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc.
-------------------------------------------------------------------------*/

<'
import cpu_top;

extend cpu_instr_s {

    keep soft opcode == select {
        // high weights on arithmetic instructions 
        
        // generation of JMPC controlled 
        // by the carry signal value

    };
};

extend cpu_env_s {
    keep num_instrs == 52;
};

extend global {
    setup_test() is also {
        set_config(gen, seed, 709938994); 
    };
};
'>
 

