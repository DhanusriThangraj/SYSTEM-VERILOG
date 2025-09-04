class parent;
  rand int d;
  constraint c1 {d==13;}
endclass
class child extends parent;
  constraint c1 {d==7;}
endclass

module inheritence;
  initial begin
    parent p1=new();
    child c1=new();
    c1.randomize();
    $display("D=%0d d=%0d",p1.d,c1.d);
    
    c1.c1.constraint_mode(0);
    c1.randomize();
    $display("D=%0d disable",c1.d);
  end
endmodule

//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
D=0 d=7
D=-1756492848 disable
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 04, 2025 at 05:32:44 EDT  (total: 00:00:01)
Done
