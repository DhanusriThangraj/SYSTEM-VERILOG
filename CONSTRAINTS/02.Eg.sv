class data_frame;
  rand bit [1:0]sel;
  rand bit [4:0]addr;
  constraint c1 {sel==2;}
  constraint c2 {addr==sel*10;}
endclass

module sample;
  data_frame d1=new();
  initial begin
    repeat(5)begin
      d1.randomize();
      $display("SEL=%0d ADDR=%0d",d1.sel,d1.addr);
    end
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
SEL=2 ADDR=20
SEL=2 ADDR=20
SEL=2 ADDR=20
SEL=2 ADDR=20
SEL=2 ADDR=20
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
