module example;
initial begin
int x = 5;
int y= (x == 5 ? x: x + 10);
  $display("Y=%d", y);
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 03:15 2025
Y=          5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Sat Oct 11 03:15:14 2025
Done

