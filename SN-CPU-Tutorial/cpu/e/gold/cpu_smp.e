/*-------------------------------------------------------------------------
File name   : cpu_smp.e
Title       : CPU Signal Map
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc.
Created     : 13-3-2013
Description : This module defines the ports which are used in the tutorial.
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc.
-------------------------------------------------------------------------*/

<'
unit signal_map_u {
    keep hdl_path()=="top";
    
    rst_p: inout simple_port of bit is instance;
    keep rst_p.hdl_path()=="rst";
    keep rst_p.delayed() ==FALSE;
    
    clk_p: inout simple_port of bit is instance;
    keep clk_p.hdl_path()=="clk";
    keep rst_p.delayed() ==FALSE;
    
    clkgen() @sys.any is {
        while (TRUE) {
	    clk_p$ = 1;
            wait [5] * cycle;
	    clk_p$ = 0;
            wait [5] * cycle;            
        };
    };
    run() is also {
        start clkgen();
    };
    data_p:   inout simple_port of byte is instance;
    keep data_p.hdl_path()=="data";
    keep data_p.delayed() ==FALSE;
    
    fetch1_p: inout simple_port of bit is instance;
    keep fetch1_p.hdl_path()=="fetch1";
    keep fetch1_p.delayed() ==FALSE;
    
    fetch2_p: inout simple_port of bit is instance;
    keep fetch2_p.hdl_path()=="fetch2";
    keep fetch2_p.delayed() ==FALSE;
    
    exec_p:   inout simple_port of bit is instance;
    keep exec_p.hdl_path()=="exec";
    keep exec_p.delayed() ==FALSE;
    
    strt_p:   inout simple_port of bit is instance;
    keep strt_p.hdl_path()=="strt";
    keep strt_p.delayed() ==FALSE;
    
    carry_p:  inout simple_port of bit is instance;
    keep carry_p.hdl_path()=="carry";
    keep carry_p.delayed() ==FALSE;
    
    zero_p:   inout simple_port of bit is instance;
    keep zero_p.hdl_path()=="zero";
    keep zero_p.delayed() ==FALSE;
    
    curr_FSM_p:inout simple_port of uint(bits:3) is instance;
    keep curr_FSM_p.hdl_path()=="cpu.curr_FSM";
    keep curr_FSM_p.delayed() ==FALSE;
    
    next_FSM_p:inout simple_port of uint(bits:3) is instance;
    keep next_FSM_p.hdl_path()=="cpu.next_FSM";
    keep next_FSM_p.delayed() ==FALSE;
};
'>
