class example;
  rand bit [31:0]a;
  constraint c1{a[31:16] inside {'1};
                a[15:0] inside {'0};}
endclass
module sample;
  initial begin
    example e;
    e=new();
    repeat(5)begin
      e.randomize();
      $display("A=%0b",e.a);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 15:01 2025
A=11111111111111110000000000000000
A=11111111111111110000000000000000
A=11111111111111110000000000000000
A=11111111111111110000000000000000
A=11111111111111110000000000000000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Wed Sep  3 15:01:33 2025
Done
