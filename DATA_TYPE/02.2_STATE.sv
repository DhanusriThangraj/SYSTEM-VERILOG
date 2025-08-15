module state_2;
  bit a;
  byte b;
  shortint c;
  int d;
  longint e;
  initial begin
    $display("(1)bit     =%b",a);
    $display("(8)byte    =%b",b);
    $display("(16)shortint=%b",c);
    $display("(32)int     =%b",d);
    $display("(64)longint=%b",e);
  end  
endmodule

// output
xcelium> run
(1)bit     =0
(8)byte    =00000000
(16)shortint=0000000000000000
(32)int     =00000000000000000000000000000000
(64)longint=0000000000000000000000000000000000000000000000000000000000000000
xmsim: *W,RNQUIE: Simulation is complete.
