module func;
  initial begin
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
  end
  function  automatic int add(); 
    static int sum;
    sum++;
    return sum;
  endfunction 
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:53 2025
          1
          2
          3
          4
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:53:21 2025
Done

module func;
  initial begin
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());

  end
  
  function  automatic int add(); 
    int sum;
    sum++;
    return sum;
  endfunction 
endmodule
// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:54 2025
          1
          1
          1
          1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:54:15 2025
Done

