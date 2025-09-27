module fibonocci;
  int n=5;
  int result;
  
  initial begin
    result = fabo(n);
    $display("fiboooooo=%d",result);
  end
  
  function automatic int fabo(int n);
    if(n<=1)
      return 1;
    else 
      return fabo(n-1)+fabo(n-2);
    endfunction
endmodule


// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 27 08:23 2025
fiboooooo=          8
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Sat Sep 27 08:23:43 2025
Done
