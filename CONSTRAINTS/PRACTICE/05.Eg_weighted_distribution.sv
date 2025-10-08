class example;
  rand bit [5:0]a;
  rand bit [5:0]b;
  rand bit [3:0]c;
  rand bit [3:0]d;
  
  constraint c1 {a dist {5:=5,[10:30]:=10};}
  constraint c2 {b dist {5:/10,[10:30]:/20};}
endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();

    repeat(5) begin
      e1.randomize();
      $display("A=%0d-----B=%0d----C=%0d--------D=%0d",e1.a,e1.b,e1.c,e1.d);
    end
  end
endmodule
// output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 02:44 2025
A=14-----B=29----C=9--------D=12
A=15-----B=5----C=11--------D=0
A=22-----B=5----C=10--------D=6
A=26-----B=20----C=7--------D=2
A=14-----B=5----C=0--------D=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Oct  8 02:44:16 2025
Done

--------------------------------------------------limitations-----------------------------------------------
Error-[IVCB-NORANDC] Illegal use of randc variable
testbench.sv, 9
$unit, "a"
  The expression contains the variable a of type randc and cannot be used in 
  solve-before, distribution, unique and function calls.
  Change the type of the randc variable or remove it from the expression.
