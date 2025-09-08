`include "interface.sv"
`include "class.sv"

module sample;
    inter interf();
  initial begin  
    example e1;
    e1=new(interf);
    
    e1.drive();
   
    interf.a=4'b1010;
    interf.b=4'b1111;
    e1.drive();
  end
endmodule
