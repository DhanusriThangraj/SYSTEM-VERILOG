class example;
  rand int data;
  static constraint c1 {data inside {[1:50]};}
endclass

module sample;
  initial begin
    example e1,e2;
    e1=new();
    e2=new();
    e1.randomize();
    e2.randomize();
    $display("data=%0d",e1.data); 
    $display("data=%0d",e2.data); 
   
    e1.c1.constraint_mode(0);
    e1.randomize();
    e2.randomize();
    $display("data=%0d",e1.data); 
    $display("data=%0d",e2.data);
       
  end
endmodule

//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
data=3
data=7
data=1825328614
data=1181718486
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 04, 2025 at 05:40:38 EDT  (total: 00:00:02)
Done
