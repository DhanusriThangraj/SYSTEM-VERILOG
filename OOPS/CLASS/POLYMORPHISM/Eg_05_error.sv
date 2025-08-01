class packet;
  integer i=1;
  function integer init();
    init=i;  
  endfunction
endclass

class child_packet extends packet;
  integer i=5;
  function integer init();
    init=-i;
  endfunction
endclass

module example;
  int j;
  initial begin
    child_packet c1=new();
    packet p1;
    $cast(c1,p1);
    j=c1.init();
    $display("j=%0d",j);
  end
endmodule

// output
Error-[NOA] Null object access
testbench.sv, 102
  The object at dereference depth 0 is being used before it was 
  constructed/allocated.
  Please make sure that the object is allocated before using it. 
  
  #0 in unnamed$$_0 at testbench.sv:102
  #1 in example 
