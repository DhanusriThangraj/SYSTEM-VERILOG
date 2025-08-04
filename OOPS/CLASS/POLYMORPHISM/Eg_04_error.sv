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
    c1=p1;// casting error
    j=c1.init();
    $display("j=%0d",j);
  end
endmodule

// output
Error-[SV-ICA] Illegal class assignment
testbench.sv, 101
"c1 = p1;"
  Expression 'p1' on rhs is not a class or a compatible class and hence cannot
  be assigned to a class handle on lhs.
  Source type: class $unit::packet
  Target type: class $unit::child_packet
  Please make sure that the lhs and rhs expressions are compatible.
