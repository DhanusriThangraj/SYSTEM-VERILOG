module sample;
  bit clk;
  initial begin
      $display("TIME=%0t clk=%0d",$time,clk);  
    forever begin
      #20 clk=~clk;
      $display("TIME=%0t clk=%0d",$time,clk);
    end
  end
  initial begin
     #100 $finish;
  end
endmodule

//output
xcelium> run
TIME=0 clk=0
TIME=20 clk=1
TIME=40 clk=0
TIME=60 clk=1
TIME=80 clk=0
Simulation complete via $finish(1) at time 100 NS + 0
./testbench.sv:168      #100 $finish;
xcelium> exit
