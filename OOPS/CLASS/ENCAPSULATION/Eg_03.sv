
class example_class;
  local int i;
  function void display(int a);
    i=a;
    $display("values of i=%0d",i);
  endfunction
endclass

module example;
  initial begin
    example_class e1;
    e1=new();
    e1.display(45);   
  end
endmodule


// output
xcelium> run
values of i=45
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
