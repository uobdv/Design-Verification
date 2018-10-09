module mux421_structural_faulty (Out, In0, In1, In2, In3, Sel0, Sel1);
output Out;
input In0, In1, In2, In3, Sel0, Sel1;

wire NotSel0, NotSel1;
wire Y0, Y1, Y2, Y3;

not (NotSel0, Sel0);
not (NotSel1, Sel1);
and (Y0, In0, NotSel1, NotSel0);
and (Y1, In1, NotSel1, Sel0);
and (Y2, In2, Sel1,    NotSel0);
and (Y3, In3, Sel1,    Sel0);
or (Out, Y0, Y1, Y2, Y2);

endmodule // mux421_structural_faulty

