class example;
  rand bit [3:0]a;
  rand bit [3:0]b;
  constraint c1 {a==5;
                 b==6;};
endclass

class example1 extends example ;
  constraint c1 {a==10;
                 b==15;};
 
endclass
module sample;
 
  initial begin
  example e1;
  example1 e2;
    
    e1=new();
    e2=new();
    
    repeat(3) begin
      e1.randomize();
      $display("A=%0d-----B=%0d",e1.a,e1.b);
     end
    repeat(3) begin
      e2.randomize();
      $display("A=%0d-----B=%0d",e2.a,e2.b);

    end
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A=5-----B=6
A=5-----B=6
A=5-----B=6
A=10-----B=15
A=10-----B=15
A=10-----B=15
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Oct 08, 2025 at 02:09:09 EDT  (total: 00:00:01)
Done
