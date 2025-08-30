module sample;
  int a;
  initial begin
    for(a=0;a<12;a++) begin
      $display("TIME=%0t A=%0d",$time,a);
      #2 a++;
      if(a==10)begin
        continue;
      end
    end
  end
endmodule

// output
xcelium> run
TIME=0 A=0
TIME=2 A=2
TIME=4 A=4
TIME=6 A=6
TIME=8 A=8
TIME=10 A=10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
