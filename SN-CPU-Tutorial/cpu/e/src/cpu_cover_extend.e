/*-------------------------------------------------------------------------
File name   : cpu_cover_extend.e
Title       : CPU Functional Coverage Implementation Extension
Project     : Specman Tutorial
Developer   : Cadence Design Systems, Inc. 
Created     : 12-1-2002
Description : This module extends the Functional Coverage cover points to add
            : coverage features.  These coverage features are added here
            : Coverage extensibility - extend the start_drv_DUT cover group by
            : adding a new item
            : Coverage per instance - extend the op1 cover item to make it a 
            : per_instance item
---------------------------------------------------------------------------
Copyright 2002-2013 (c) Cadence Design Systems, Inc.
-------------------------------------------------------------------------*/

<'
extend cpu_instr_s {

    // Extend the start_drv_DUT cover group with "is also"

    
        // Add the kind field to the cover group as a new item

        
        // Extend the op1 item to make it a per_instance item


};
'>
