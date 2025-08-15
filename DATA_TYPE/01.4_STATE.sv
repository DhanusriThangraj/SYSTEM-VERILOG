module state_4 ;
  reg [1:0]a;
  wire [1:0]b;
  logic [1:0]c;
  integer [1:0]d;
  time e;
  real f; 
  initial begin
    $display("reg=    %0b",a);
    $display("wire=   %0b",b);
    $display("logic=  %0b",c);
    $display("integer=%0d",d);
    $display("time=   %0t",$time,e);
    $display("real=   %0f",f);
  end 
endmodule

// output
reg=    x
wire=   z
logic=  x
integer=x
time=   0                   x
real=   0.000000
xmsim: *W,RNQUIE: Simulation is complete.
