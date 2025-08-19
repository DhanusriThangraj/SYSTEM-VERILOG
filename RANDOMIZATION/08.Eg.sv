module example;
  int data;
  initial begin
    repeat(4)begin
      std::randomize(data);
      $display("DATA=%0d",data);
    end
  end
endmodule


// output
xcelium> run
DATA=-182898798
DATA=1997779049
DATA=983378248
DATA=605856704
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
