
module func;
  initial begin
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());

  end
  
  function static int add(); 
    automatic int sum;
    sum++;
    return sum;
  endfunction 
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:57 2025
          1
          1
          1
          1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:57:55 2025
Done

module func;
  initial begin
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());

  end
  
  function static int add(); 
    int sum;
    sum++;
    return sum;
  endfunction 
endmodule
//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:58 2025
          1
          2
          3
          4
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:58:57 2025
Done
