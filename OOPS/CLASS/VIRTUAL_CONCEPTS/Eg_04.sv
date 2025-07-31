class example;
  string a;
 virtual function void display();
   a="oiuytr";
    $display("a=%s",a);
  endfunction
endclass

class example_1 extends example;
  string a="qwerty";
  function  void display();
    $display("a=%s",a);
  endfunction
  endclass

module sample;
  initial begin
    example_1 e1=new();
    example q=e1;//upcasting
    q.display();
    e1.display;
    $display("display the values of the a=%s",q.a);
    $display("display the values of the a=%s",e1.a);
  end
endmodule

// output
xcelium> run
a=qwerty
a=qwerty
display the values of the a=
display the values of the a=qwerty
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
