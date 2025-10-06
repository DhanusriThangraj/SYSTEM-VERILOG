
module example;
  bit clk;
  initial begin
    while(1)begin
      #500 clk=~clk;
      $display("TIME=%0t CLK=%0d",$time,clk);
    end
  end
  initial begin
    #10000 $finish;
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  6 01:18 2025
TIME=500 CLK=1
TIME=1000 CLK=0
TIME=1500 CLK=1
TIME=2000 CLK=0
TIME=2500 CLK=1
TIME=3000 CLK=0
TIME=3500 CLK=1
TIME=4000 CLK=0
TIME=4500 CLK=1
TIME=5000 CLK=0
TIME=5500 CLK=1
TIME=6000 CLK=0
TIME=6500 CLK=1
TIME=7000 CLK=0
TIME=7500 CLK=1
TIME=8000 CLK=0
TIME=8500 CLK=1
TIME=9000 CLK=0
TIME=9500 CLK=1
$finish called from file "testbench.sv", line 75.
$finish at simulation time                10000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10000 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Mon Oct  6 01:18:03 2025
Done
