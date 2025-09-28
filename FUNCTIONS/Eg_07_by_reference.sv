
// When a function is called, a reference (or address) of the original variable is passed. 
// Changes made inside the function affect the original variable.

module func;
  int  d=10;
  int result;
  
  initial begin
    result=incre(d);
    $display("d=%0d",d);
  end
  
  function int incre(ref int x);
    x=x+1;
    $display("x=%0d",x);
    return x;
  endfunction
  
  endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 28 08:04 2025
x=11
d=11
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Sun Sep 28 08:04:01 2025
Done
