class example;
  int a,b,c;
  function void display();
    a=78;
    b=987;
    c=99;
    $display("display the values of the a=%0d,b=%0d,c=%0d",a,b,c);
  endfunction
endclass

class example_1 extends example;
  int a,b,c;
  function void display();
    a=78;
    b=98;
    c=a+b;
    $display("values of a=%0d,b=%0d,c=%0d",a,b,c);
  endfunction
endclass


module sample;
  initial begin
    example_1 e=new();
    example r=e;
    e.display();
    r.display();
  end
endmodule

// output
xcelium> run
values of a=78,b=98,c=176
display the values of the a=78,b=987,c=99
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
