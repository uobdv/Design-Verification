module mux421_dataflow_faulty (Out, In0, In1, In2, In3, Sel0, Sel1);
output Out;
input In0, In1, In2, In3, Sel0, Sel1;

assign Out = 
  (~Sel1 & ~Sel0 & In0) 
| (~Sel1 & ~Sel0 & In1) 
| (Sel1  & ~Sel0 & In2) 
| (Sel1  &  Sel0 & In3);

endmodule // mux421_dataflow_faulty

