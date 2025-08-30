
module example;
  int clk;
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
# run -all
# TIME=500 CLK=-1
# TIME=1000 CLK=0
# TIME=1500 CLK=-1
# TIME=2000 CLK=0
# TIME=2500 CLK=-1
# TIME=3000 CLK=0
# TIME=3500 CLK=-1
# TIME=4000 CLK=0
# TIME=4500 CLK=-1
# TIME=5000 CLK=0
# TIME=5500 CLK=-1
# TIME=6000 CLK=0
# TIME=6500 CLK=-1
# TIME=7000 CLK=0
# TIME=7500 CLK=-1
# TIME=8000 CLK=0
# TIME=8500 CLK=-1
# TIME=9000 CLK=0
# TIME=9500 CLK=-1
# ** Note: $finish    : testbench.sv(105)
