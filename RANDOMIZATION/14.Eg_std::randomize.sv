//void'(std::randomize(e1.a)); // ❌ hierarchical name not allowed
//only used within the class or module

class example;
   bit [2:0]a;
   bit [2:0]b;
  function void display();
      void'(std::randomize(a));
      void'(std::randomize(b));
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
A=4-----B=7
A=6-----B=6
A=2-----B=0
A=6-----B=5
A=1-----B=0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Oct 08, 2025 at 01:19:39 EDT  (total: 00:00:01)
Done
