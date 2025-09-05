`include "top.sv"
module top;
  inter interf ();
    
  and_gate uut (.a(interf.a),
                         .b(interf.b),
                         .out(interf.out));
  and_tb inst (interf);
endmodule
