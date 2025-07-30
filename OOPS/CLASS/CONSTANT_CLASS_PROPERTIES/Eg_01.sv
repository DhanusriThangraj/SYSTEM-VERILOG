class example;
  const int x=1;
   string y;
  function new();
    y="global instances"; 
  endfunction
  function void example1();
    $display ("the values of a=%0d and y=%0s",x,y); 
  endfunction
endclass 

module sample;
  example eg1;
  initial begin
    eg1=new();
  eg1.example1();
    eg1.y="in global instances , the constant values are firstly assigned and it can be override in class and not overide in the module";
    eg1.example1();
  end
endmodule


// output
xcelium> run
the values of a=1 and y=global instances
the values of a=1 and y=in global instances , the constant values are firstly assigned and it can be override in class and not overide in the module
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

 
