class example;
  rand bit [2:0]a;
  randc bit [2:0]b;
  
  function void display();
    $display("A=%0d-----B=%0d",a,b);
  endfunction
  
endclass

module sample;
  example e1;
  initial begin
    e1=new();
    repeat(10) begin
      
      e1.randomize();
      e1.a.rand_mode(0);
      e1.display();
      
      e1.a.rand_mode(1);
      e1.randomize();
      e1.display();

      e1.rand_mode(0);
      e1.display();
      
      e1.rand_mode(1);
      e1.randomize();
      e1.display();
      $display("-----------------------");
    end
  end
endmodule


//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A=5-----B=7
A=6-----B=1
A=6-----B=1
A=5-----B=2
-----------------------
A=7-----B=0
A=3-----B=6
A=3-----B=6
A=7-----B=4
-----------------------
A=1-----B=3
A=6-----B=5
A=6-----B=5
A=2-----B=3
-----------------------
A=2-----B=0
A=2-----B=4
A=2-----B=4
A=6-----B=2
-----------------------
A=0-----B=7
A=7-----B=5
A=7-----B=5
A=3-----B=1
-----------------------
A=1-----B=6
A=3-----B=1
A=3-----B=1
A=0-----B=4
-----------------------
A=5-----B=5
A=5-----B=3
A=5-----B=3
A=6-----B=2
-----------------------
A=1-----B=6
A=3-----B=7
A=3-----B=7
A=4-----B=0
-----------------------
A=4-----B=5
A=7-----B=1
A=7-----B=1
A=7-----B=0
-----------------------
A=3-----B=6
A=1-----B=2
A=1-----B=2
A=6-----B=3
-----------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Oct 08, 2025 at 00:47:38 EDT  (total: 00:00:02)
Done
