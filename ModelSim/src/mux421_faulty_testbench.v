`include "mux421_gen.v"
`include "mux421_structural_faulty.v"
`include "mux421_dataflow_faulty.v"
`include "mux421_behavioural_faulty.v"
`include "mux421_check.v"



module mux421_faulty_structural_testbench;

  wire In0, In1, In2, In3, Sel0, Sel1, Out;

  mux421_gen StimulusGenerator (In0, In1, In2, In3, Sel0, Sel1);
  mux421_structural_faulty DUV (Out, In0, In1, In2, In3, Sel0, Sel1);
  mux421_check Checker (In0, In1, In2, In3, Sel0, Sel1, Out);

endmodule // mux421_faulty_structural_testbench



module mux421_faulty_dataflow_testbench;

  wire In0, In1, In2, In3, Sel0, Sel1, Out;

  mux421_gen StimulusGenerator (In0, In1, In2, In3, Sel0, Sel1); 
  mux421_dataflow_faulty DUV (Out, In0, In1, In2, In3, Sel0, Sel1);
  mux421_check Checker (In0, In1, In2, In3, Sel0, Sel1, Out);

endmodule // mux421_faulty_dataflow_testbench



module mux421_faulty_behavioural_testbench;

  wire In0, In1, In2, In3, Sel0, Sel1, Out;

  mux421_gen StimulusGenerator (In0, In1, In2, In3, Sel0, Sel1);
  mux421_behavioural_faulty DUV (Out, In0, In1, In2, In3, Sel0, Sel1);
  mux421_check Checker (In0, In1, In2, In3, Sel0, Sel1, Out);

endmodule // mux421_faulty_behavioural_testbench
