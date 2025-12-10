// Code your testbench here
// or browse Examples
class packet;
  integer i=123;
virtual  function integer init();
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
    p1=new();
    j=p1.init();
    $display("j=%0d",j);

    p1=c1;//up casting
    j=p1.init();
    $display("j=%0d",j);
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec 10 11:44 2025
j=123
j=-5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Wed Dec 10 11:44:20 2025
Done
