module bit_;
  bit a; 
  bit b;
  bit c;
  bit d;
  bit e;
  bit f;

  initial begin
    a ='bxxz;                 
    $display("a = %b", a);

    b = 'bxxxxxzzzzx;
    $display("b = %b", b);

    c ='bxxzzz1x;  
    $display("c = %b", c);

    d ='bxxzz010;     
    $display("d = %b", d);

    e = 'bxxzz100101;  
    $display("e = %b", e);

    f = 'bxxzz100110010;   
    $display("f = %b", f);
  end
endmodule

// output
xcelium> run
a = 0
b = 0
c = 0
d = 0
e = 1
f = 0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
