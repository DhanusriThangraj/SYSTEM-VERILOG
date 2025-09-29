
module func;
  initial begin
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());

  end 
  function int add(); 
    automatic int sum;
    sum++;
    return sum;
  endfunction 
endmodule

module func;
  initial begin
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());
    $display("%d",add());

  end
  function automatic int add(); 
    int sum;
    sum++;
    return sum;
  endfunction 
endmodule


//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:32 2025
          1
          1
          1
          1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:32:24 2025
Done
