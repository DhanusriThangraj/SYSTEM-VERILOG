class parent;
  int a;
  function void parentfunction();
    this.a=2;
    $display("Display the values of a=%0d",a);
  endfunction    
endclass

class child extends parent;
  int b;
  function void child1();
    this.b=13;
    super.parentfunction();
    $display("display the child value b=%0d",b);
    endfunction
endclass

module sample;
  child c1;
  initial begin
     c1=new();
    c1.child1();
  end
endmodule

// output
xcelium> run
Display the values of a=2
display the child value b=13
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
