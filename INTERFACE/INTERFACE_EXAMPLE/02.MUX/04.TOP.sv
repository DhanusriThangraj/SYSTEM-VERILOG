
`include "top.sv"
module top;
  inter interf();
  mux_4_1 uut (.a(interf.a),.sel(interf.sel),.y(interf.y));
  
  mux_tb inst (interf);
  
endmodule
