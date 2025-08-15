module logic_;
  logic  a; 
  logic  b;
  logic  c;
  logic  d;
  logic  e;
  logic  f;
initial begin
    a = 'bxxz; 
    $display("%b", a);
     b = 'bxxxxxzzzzx;
    $display("%b", b);
    c = 'bxxzzz1;  
    $display("%b", c);
                                           ///its last values  will  be displayed 
    d = 'bxxzz010;     
    $display("%b", d);
  
    e = 'bxxzz100111;  
  $display("%b", e);
  
    f = 'bxxzz100110010;   
  $display("%b", f);
end
  
  
// output
  xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
z
x
1
0
1
0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
