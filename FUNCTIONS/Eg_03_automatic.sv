module func;
  int result;
  int n=5;
  
  initial begin
    result=fact(n);
    $display("factorial values of n=%d",result);
  end
 
  function automatic int fact(int n);
    if (n<=1)
      return 1;
    else
    return fact(n-1)*n;
  endfunction
  
endmodule


//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 27 08:06 2025
factorial values of n=   120
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Sat Sep 27 08:06:49 2025
Done
