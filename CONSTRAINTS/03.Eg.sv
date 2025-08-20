class data_frame;
  rand bit sel;
  rand bit [4:0]out;
  constraint c1 {out==(sel?5:10);}
endclass

module example;
  data_frame d1=new();
  initial begin
    repeat(10)begin
      d1.randomize();
      $display("sel=%0d out=%0d",d1.sel,d1.out);
    end
  end
endmodule


// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
sel=0 out=10
sel=1 out=5
sel=1 out=5
sel=0 out=10
sel=0 out=10
sel=0 out=10
sel=0 out=10
sel=0 out=10
sel=0 out=10
sel=0 out=10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
