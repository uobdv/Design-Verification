/*-------------------------------------------------------------------------
File name   : cpu_cover.e
Title       : CPU Functional Coverage Implementation
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : This module defines the Functional Coverage cover points.  
            : Three types of coverages are specified here
            : DUT Coverage - Finite state machine coverage
            : Instruction Stimulus Coverage - opcode, op1
            : Corner Case Coverage - Carry bit asserted during JMPC
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
import cpu_drive; 

extend cpu_env_s {
    
    event cpu_fsm is @sys.cpuclk;

    // DUT Coverage: State Machine and State Machine transition coverage

};

extend cpu_instr_s {

    cover start_drv_DUT is {

    }; 
};
'>
