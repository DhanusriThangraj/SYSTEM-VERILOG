module logic_;
  reg  a; 
  reg  b;
  reg  c;
  reg  d;
  reg  e;
  reg  f;
initial begin
    a = 'bxxz; 
    $display("%b", a);
     b = 'bxxxxxzzzzx;
    $display("%b", b);
    c = 'bxxzzz1;  
    $display("%b", c);

    d = 'bxxzz010;     
    $display("%b", d);
  
    e = 'bxxzz100111;  
  $display("%b", e);
  
    f = 'bxxzz100110010;   
  $display("%b", f);
end
endmodule

// output
xcelium> run
z
x
1
0
1
0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
