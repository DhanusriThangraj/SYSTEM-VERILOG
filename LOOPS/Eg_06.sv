module sample;
  int s;
  initial begin
    forever begin
      $display("TIME=%0t S=%0d",$time,s);
      #5 s++;
    end
  end
  initial begin
    #50 $finish;
  end
endmodule

// output
xcelium> run
TIME=0 S=0
TIME=5 S=1
TIME=10 S=2
TIME=15 S=3
TIME=20 S=4
TIME=25 S=5
TIME=30 S=6
TIME=35 S=7
TIME=40 S=8
TIME=45 S=9
Simulation complete via $finish(1) at time 50 NS + 0
./testbench.sv:153     #50 $finish;
xcelium> exit
