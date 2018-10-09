module mux421_gen (Out0, Out1, Out2, Out3, Out4, Out5);

output Out0, Out1, Out2, Out3, Out4, Out5;
reg Out0, Out1, Out2, Out3, Out4, Out5;

initial begin

  Out0 = 0;
  Out1 = 0;
  Out2 = 0;
  Out3 = 0;
  Out4 = 0;
  Out5 = 0;

  #10 Out0 = 1; 
  #10 Out4 = 1;          
  #10 Out1 = 1; Out0 = 0;
  #10 Out4 = 0; Out5 = 1; 
  #10 Out2 = 1; Out1 = 0;
  #10 Out4 = 1;
  #10 Out3 = 1; Out2 = 0;
  #10 $stop;

end

endmodule

