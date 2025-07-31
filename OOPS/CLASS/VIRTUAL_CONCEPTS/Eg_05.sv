class sample;
  int a;
virtual  function void display();
    a=3456789;
    $display("values of a=%0d",a);
  endfunction
endclass
class sample1 extends sample;
  int a;
  function void display();
    a=349;
    $display("values of a=%0d",a);
  endfunction
endclass

module example;
  initial begin
    sample1 s1=new();
    sample s2=s1;
    s2.display();
  end
endmodule

// output
xcelium> run
values of a=349
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
