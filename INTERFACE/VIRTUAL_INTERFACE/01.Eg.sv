//design code
module and_gata #(parameter N=5)(
  input wire [N-1:0]a,
  input wire [N-1:0]b,
  output reg [N-1:0]out);
   assign out=a&b;
endmodule

//testbench
module and_tb;
  parameter N = 5;
  reg [N-1:0]a;
  reg [N-1:0]b;
  wire[N-1:0]out;
  
  and_gata #(.N(5))uut (.a(a),.b(b),.out(out));
  
  initial begin
    $display("Time\tA\tB\t\tOUT");
    $monitor("%0t\t%0b\t%0b\t\t%0b\t",$time,a,b,out);
    a=5'b00110;
    b=5'b11111;
    
    #10; a=5'b11110;
    b=5'b10011;
    
    #1;$finish;
  end
endmodule


//Output
[2025-09-05 11:46:46 UTC] iverilog '-Wall' '-g2012' design.sv testbench.sv  && unbuffer vvp a.out  
Time	A	B		OUT
0	110	11111		110	
10	11110	10011		10010	
testbench.sv:20: $finish called at 11 (1s)
Done
