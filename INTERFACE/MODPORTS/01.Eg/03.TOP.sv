module add (inter interf);
  assign interf.add.sum=interf.a+interf.b;
endmodule

module sub (inter interf);
  assign interf.sub.result=interf.sum-interf.c;
endmodule
