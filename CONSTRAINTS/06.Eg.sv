// Code your testbench here
// or browse Examples
class example;
  rand bit sel;
  rand bit [3:0]out;
  constraint c1 {(sel==1)->out==10;}  //Implication operator in constraint+
  constraint c2 {sel dist {1:=3,0:=7};}
  function void display();
    $display("SEL=%0b OUT=%0d",sel,out);
  endfunction
endclass

module sample;
  example e1;
  initial begin
     e1=new();
    repeat(10)begin 
      e1.randomize();
      e1.display();
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  2 10:17 2025
SEL=0 OUT=10
SEL=1 OUT=10
SEL=0 OUT=0
SEL=1 OUT=10
SEL=1 OUT=10
SEL=1 OUT=10
SEL=0 OUT=2
SEL=1 OUT=10
SEL=0 OUT=1
SEL=0 OUT=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.530 seconds;       Data structure size:   0.0Mb
Tue Sep  2 10:17:05 2025
Done
