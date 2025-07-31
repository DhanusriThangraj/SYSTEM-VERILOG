class example;
  string a="dhanu";
 virtual function new();
    $display("a=%s",a);
  endfunction
endclass

class example_1 extends example;
  string b="qwerty";
  function  new();
    $display("b=%s",b);
  endfunction
  endclass

module sample;
  initial begin
    example_1 e1;
    e1=new();
  end
endmodule


// output
virtual function new();
                    |
xmvlog: *E,BADQAL (testbench.sv,208|20): Lifetime or qualifier(s) 'virtual' not allowed before function new declaration.
