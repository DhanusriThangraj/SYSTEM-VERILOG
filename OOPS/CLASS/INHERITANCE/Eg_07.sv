class example;
  int a;
  function void display();
    $display ("Display a=%0d",a);
  endfunction
endclass

class example_1 extends example;
  int b;
  function void display();
    super.display();
    $display("Display b=%0d",b);
  endfunction
endclass

module sample;
  example_1 e1;
  initial begin
    e1=new();
    e1.a=12345;
    e1.b=98765;
    e1.display();
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
Display a=12345
Display b=98765
xmsim: *W,RNQUIE: Simulation is complete.
