module forloop;
//   int i;
  initial begin
    for(int i=1; i<10;i++)begin
      $display("--i=%0d--",i);
    end
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
--i=1--
--i=2--
--i=3--
--i=4--
--i=5--
--i=6--
--i=7--
--i=8--
--i=9--
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
