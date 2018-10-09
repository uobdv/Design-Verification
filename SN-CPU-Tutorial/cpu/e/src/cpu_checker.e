/*-------------------------------------------------------------------------
File name   : cpu_checker.e
Title       : CPU Data and Temporal Checker Implementation
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : Temporal checker - Fetch1 signal should be asserted 1 cycle 
            : after entering execution state.
            : Data Checker - When instruction execution is done, compare 
            : register values in DUT to expected values from reference model
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
import cpu_drive;

extend cpu_env_s {

   // Data Checker
   event exec_done is (fall(smp.exec_p$) and 
         true(smp.rst_p$ == 0))@sys.cpuclk;

   on_exec_done() is {
      // Compare PC - program counter

   };

   // Temporal (Protocol) Checker
   event enter_exec_st is (change(smp.curr_FSM_p$) and
         true(smp.curr_FSM_p$ == exec_st))@sys.cpuclk; 
   
   event fetch1_assert is (change(smp.fetch1_p$) and
         true(smp.fetch1_p$ == 1)) @sys.cpuclk;
 
   // Interface Spec: After entering instruction execution state, fetch1 
   //                 signal must be asserted in the following cycle.

   
};
'>
