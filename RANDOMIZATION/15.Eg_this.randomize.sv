class example;
  rand bit [2:0]a;
  rand bit [2:0]b;
  function void display();
    void'(this.randomize());
     $display("A=%0d-----B=%0d",a,b);
  endfunction
endclass

module sample;
  example e1;
  initial begin
    e1=new();
    
    repeat(5) begin
      e1.display();
    end
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A=5-----B=7
A=6-----B=3
A=5-----B=0
A=7-----B=2
A=3-----B=5
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Oct 08, 2025 at 01:31:05 EDT  (total: 00:00:02)
Done
