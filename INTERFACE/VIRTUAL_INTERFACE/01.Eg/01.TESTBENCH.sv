`include "top.sv"
`include "interface.sv"

module tb;
  inter interf();

  example e1;

  initial begin
    interf.clk = 0;
    forever #5 interf.clk = ~interf.clk;
  end

  initial begin
    e1 = new(interf);

    #12  e1.drive(3'd4, 4'd12);
    #10  e1.drive(3'd5, 4'd14);

    #10  $finish;
  end
endmodule
