`include "interface.sv"
`include "top.sv"

module sample;
  inter interf();
   
  add dut (.interf(interf.add));
  sub uut (.interf(interf.sub));
  
  initial begin
    $display("A\tB\tC\tSUM\tSUB");
    $monitor("%0b\t%0b\t%0b\t%0b\t",interf.a,interf.b,interf.c,interf.sum,interf.result);
  end
  initial begin
    #5; interf.add.a=4'b0011;
    #5; interf.add.b=4'b1010;
    #5; 
    #5; interf.sub.c=4'b0010;
    #1;$finish;
    
  end
endmodule
