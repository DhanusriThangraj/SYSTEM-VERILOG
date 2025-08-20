class example;
  rand bit [7:0]data;
  constraint c1{data>=10;
                data<=55;}
endclass

module test;
  example e1=new();
  initial begin
    repeat(5)begin
      e1.randomize();
      $display("DATA=%0d",e1.data);
    end
  end
endmodule


// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
DATA=30
DATA=45
DATA=43
DATA=12
DATA=14
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
