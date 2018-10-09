module mux421_behavioural_faulty (Out, In0, In1, In2, In3, Sel0, Sel1);
output Out;
input In0, In1, In2, In3, Sel0, Sel1;

reg Out;

always @ (Sel1 or In0 or In1 or In2 or In3)
begin
  case ({Sel1,Sel0})
    2'b00 : Out = In0;
    2'b01 : Out = In1;
    2'b10 : Out = In2;
    2'b11 : Out = In3;
    default : Out = 1'bx;
  endcase
end

endmodule // mux421_behavioural_faulty
