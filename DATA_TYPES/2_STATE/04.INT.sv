module state_;
 int a; 
 int b;
 int c;
 int d;
 int e;
 int f;

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
a = 00000000000000000000000000000000
b = 00000000000000000000000000000000
c = 00000000000000000000000000000010
d = 00000000000000000000000000000010
e = 00000000000000000000000000100101
f = 00000000000000000000000100110010
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
