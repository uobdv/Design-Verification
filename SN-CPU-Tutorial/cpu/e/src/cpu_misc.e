/*-------------------------------------------------------------------------
File name   : cpu_misc.e
Title       : CPU Run Time Environment
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc. 
-------------------------------------------------------------------------*/

<'
extend global {                     
    setup_test() is also {
        set_config(print,radix,hex);
        set_config(print, items, 100);
        set_config(simulation,enable_ports_unification,TRUE);
    };
};
'>
