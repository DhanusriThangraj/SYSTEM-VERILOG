module eg;
  int a=1;
  initial begin
    repeat(10)begin
      $display("A=%0d",a);
      a++;
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 03:42 2025
A=1
A=2
A=3
A=4
A=5
A=6
A=7
A=8
A=9
A=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Sat Aug 30 03:42:46 2025
Done
