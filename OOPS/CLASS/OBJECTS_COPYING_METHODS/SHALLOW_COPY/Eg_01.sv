class example;
  int a=10;
  int b=13;
  function void display();
    $display("Display the values of a=%0d and b=%0d",a,b);
  endfunction
endclass

module sample;
  example eg1,eg2;
  initial begin
    eg1=new();
    eg1.display();
    eg1.a=145;
    eg1.display();
    eg2= new eg1;   //shallow copy;
    eg2.a=123;
    eg1.display();
    eg2.display();
  end
endmodule

// output
xcelium> run
Display the values of a=10 and b=13
Display the values of a=145 and b=13
Display the values of a=145 and b=13
Display the values of a=123 and b=13
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit



