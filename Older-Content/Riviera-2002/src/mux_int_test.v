`include "mux_int.v"

module mux_int_test;
   

   wire [0:31] out_data;
   wire        out_resp;
   reg  [0:31] in_data1, in_data2;
   reg         in_sel1,  in_sel2;

   mux_int M1(out_data, out_resp, in_data1, in_data2, in_sel1, in_sel2);
   
initial
  begin
   
     in_sel1  = 1'b1;
     in_sel2  = 1'b0;
     in_data1 = 4096;
     in_data2 = 1234;
       
     #100

       in_sel1 = 1'b0;

     #100

       in_sel2 = 1'b1;

     #100

       in_sel1 = 1'b1;

     #100

       in_data1 = 2048;

     #100

       in_data1 = 1024;
       in_data2 = 5678;

     #100

       in_sel1 = 1'b0;

     #100

       in_sel1 = 1'b1;

     #100

       in_sel1 = 1'b0;

     #100

       in_sel2 = 1'b0;

     #100 

       in_sel1 = 1'b1;

     #100 

       in_sel1 = 1'b0;

     #1 $stop;
     

  end // initial begin
   
  always @ (in_data1 or in_data2 or in_sel1 or in_sel2) begin     

     $display ("time: %t, data: %d, resp: %b", $time, out_data, out_resp);
     
  end
   
endmodule // mux_int_test
