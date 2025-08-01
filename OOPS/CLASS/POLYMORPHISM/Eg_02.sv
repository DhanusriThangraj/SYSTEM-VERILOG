class example;
  int a,b,c;
  function void display();
    $display("display the values of the a=%0d,b=%0d,c=%0d",a,b,c);
  endfunction
endclass

class example_1 extends example;
  int a,b,c;
  function void display();
    $display("values of a=%0d,b=%0d,c=%0d",a,b,c);
  endfunction
endclass

module sample;

  initial begin
    example_1 e=new();
    example r=e;
    r.a=12; r.b=90; r.c=98;
    e.a=67; e.b=6; e.c=23;
    e.display();
    r.display();
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
values of a=67,b=6,c=23
display the values of the a=12,b=90,c=98
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
