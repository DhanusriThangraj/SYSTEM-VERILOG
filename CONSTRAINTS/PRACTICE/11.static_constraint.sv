// Code your testbench here
// or browse Examples
class example;
  rand bit [3:0]a; 
static constraint c2 {a==4;}
 
endclass

module sample;
 
  initial begin
  example e1,e2,e3;    
    e1=new();
    e2=new();
    e3=new();
    
    repeat(5)begin

      e1.randomize();
      e1.c2.constraint_mode(0);

      $display("A=%0d",e1.a);
      
      e2.randomize();
      $display("A=%0d",e2.a);
      e3.randomize();
      $display("A=%0d",e3.a);
    end
  end
endmodule


//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 04:25 2025
A=4
A=7
A=3
A=5
A=9
A=1
A=14
A=2
A=13
A=6
A=6
A=3
A=12
A=12
A=7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Oct  8 04:25:12 2025
Done
