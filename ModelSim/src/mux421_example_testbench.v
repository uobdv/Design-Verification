`include "mux421_gen.v"
`include "mux421_structural.v"
`include "mux421_check.v"


module mux421_structural_testbench;

  wire In0, In1, In2, In3, Sel0, Sel1, Out;

  mux421_gen StimulusGenerator (In0, In1, In2, In3, Sel0, Sel1);
  mux421_structural DUV (Out, In0, In1, In2, In3, Sel0, Sel1);
  mux421_check Checker (In0, In1, In2, In3, Sel0, Sel1, Out);

endmodule // mux421_structural_testbench

