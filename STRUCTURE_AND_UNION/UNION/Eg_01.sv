module union_example;
  union{
  int a;
  byte b;}trail;
  initial begin
    
    trail.a=16'hffff;
    $display("value of a %h",trail.a);
    
    trail.b=8'hda;
    $display("value of b %h",trail.b);
    
    $display("value of a %h",trail.a);
    
    $display("value of union %p", trail);
  end
endmodule

// output
xcelium> run
value of a 0000ffff
value of b da
value of a ffffffda
value of union '{a:-38}
xmsim: *W,RNQUIE: Simulation is complete.
