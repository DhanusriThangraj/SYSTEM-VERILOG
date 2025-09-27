module func;
  int result;
  int n=5;
  
  initial begin
    result=fact(n);
    $display("factorial values of n=%d",result);
  end
 
  function  int fact(int n);
    if (n<=1)
      return 1;
    else
    return fact(n-1)*n;
  endfunction
  
endmodule

// output
factorial values of n=    1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Sat Sep 27 08:04:09 2025
Done
