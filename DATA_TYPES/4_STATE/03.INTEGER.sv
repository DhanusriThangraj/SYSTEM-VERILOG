module logic_;
  integer  a; 
  integer  b;
  integer  c;
  integer  d;
  integer  e;
  integer  f;

  initial begin
    a ='bxxz;                 // sized
    $display("a = %b", a);

    b = 'bxxxxxzzzzx;
    $display("b = %b", b);

    c ='bxxzzz1x;  
    $display("c = %b", c);

    d ='bxxzz010x;     
    $display("d = %b", d);

    e = 'bxxzz100111;  
    $display("e = %b", e);

    f = 'bxxzz100110010;   
    $display("f = %b", f);
  end
endmodule


// output
xcelium> run
a = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxz
b = xxxxxxxxxxxxxxxxxxxxxxxxxxxzzzzx
c = xxxxxxxxxxxxxxxxxxxxxxxxxxxzzz1x
d = xxxxxxxxxxxxxxxxxxxxxxxxxxzz010x
e = xxxxxxxxxxxxxxxxxxxxxxxxzz100111
f = xxxxxxxxxxxxxxxxxxxxxzz100110010
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

