class sample;
  rand int data;
  constraint c1 {data < 30;}
endclass

module sample;
  initial begin
    sample s1;
    s1=new();
    s1.randomize() with {data==10;};
    $display("data=%0d",s1.data);
  end
endmodule
// output
xcelium> run
data=10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 03, 2025 at 14:25:19 EDT  (total: 00:00:02)
Done
