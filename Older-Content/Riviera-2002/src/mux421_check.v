module mux421_check (In0, In1, In2, In3, Sel0, Sel1, MuxOut);

input In0, In1, In2, In3, Sel0, Sel1, MuxOut;

initial begin

  $monitor ("time: %t, In0=%b,In1=%b,In2=%b,In3=%b,Sel0=%b,Sel1=%b,MuxOut=%b", $time, In0, In1, In2, In3, Sel0, Sel1, MuxOut);

end

endmodule
