`include "test.sv"
module top;
  inter interf();
  
  jk dut ( .clk(interf.clk),.reset(interf.reset),.j(interf.j),.k(interf.k),.q(interf.q),.qbar(interf.qbar));
  
  jk_tb inst (interf);
  
endmodule
