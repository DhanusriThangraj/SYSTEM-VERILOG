class packet;
  integer i=1;
virtual  function integer init();
    init=i;
  endfunction
endclass

class child_packet extends packet;
  integer i=2;
  function integer init();
    init= -i;
  endfunction
endclass

module class_example;
  int j;
  initial begin 
    child_packet c1=new();
    packet p1=c1;
    $display("display the values of the i=%0d",p1.i);
    j=p1.init();
    $display("Display the values of the i=%0d",j);
  end
endmodule

// output
xcelium> run
display the values of the i=1
Display the values of the i=-2
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
