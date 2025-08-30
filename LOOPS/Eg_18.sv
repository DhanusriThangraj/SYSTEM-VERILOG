
module example;
  initial begin
    for(int i=0;i<5;i++)begin
      $display("GOOD MORNING");
      $display("GOOD NIGHT");
      $display("------------");
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 12:50 2025
GOOD MORNING
GOOD NIGHT
------------
GOOD MORNING
GOOD NIGHT
------------
GOOD MORNING
GOOD NIGHT
------------
GOOD MORNING
GOOD NIGHT
------------
GOOD MORNING
GOOD NIGHT
------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Sat Aug 30 12:50:13 2025
Done
