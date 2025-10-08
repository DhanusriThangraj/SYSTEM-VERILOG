class example;
  rand bit [2:0]a;
  randc bit [2:0]b;
  
  function void pre_randomize();
    $display("A=%0d-----B=%0d",a,b);
        $display("------PRE----------");

  endfunction
  
    function void post_randomize();
     $display("A=%0d-----B=%0d",a,b);

    $display("------POST----------");

  endfunction
  
endclass

module sample;
  example e1;
  initial begin
    e1=new();
    repeat(3) begin
      
      e1.randomize();

    end
  end
endmodule
//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A=0-----B=0
------PRE----------
A=5-----B=7
------POST----------
A=5-----B=7
------PRE----------
A=6-----B=1
------POST----------
A=6-----B=1
------PRE----------
A=5-----B=2
------POST----------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Oct 08, 2025 at 01:07:01 EDT  (total: 00:00:01)
Done
