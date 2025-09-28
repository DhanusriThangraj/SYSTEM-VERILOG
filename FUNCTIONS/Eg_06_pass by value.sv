
// When a function is called, a copy of the original variable is passed to the function. 
// Changes made inside the function do not affect the original variable.

module func;
  int  d=10;
  int result;
  
  initial begin
    result=incre(d);
    $display("d=%0d",d);
  end
  
  function int incre(int x);
    x=x+1;
    $display("x=%0d",x);
    return x;
  endfunction  
  endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 28 07:59 2025
x=11
d=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Sun Sep 28 07:59:21 2025
Done

