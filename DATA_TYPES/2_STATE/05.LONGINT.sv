module state_;
 longint a; 
 longint b;
 longint c;
 longint d;
 longint e;
 longint f;

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
a = 0000000000000000000000000000000000000000000000000000000000000000
b = 0000000000000000000000000000000000000000000000000000000000000000
c = 0000000000000000000000000000000000000000000000000000000000000010
d = 0000000000000000000000000000000000000000000000000000000000000010
e = 0000000000000000000000000000000000000000000000000000000000100101
f = 0000000000000000000000000000000000000000000000000000000100110010
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
