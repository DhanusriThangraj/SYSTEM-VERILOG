class example;
  int a;
  function new();
    a=123;
    $display("values of a=%0d",a);
  endfunction
endclass

class example_1 extends example;
  int b;
  function new();
    b=765;
    $display("values of b=%0d",b);
  endfunction
endclass

module sample();
  example_1 e1;
  initial begin
    e1=new ();
  end
endmodule

// output
# run -all
# values of a=123
# values of b=765
# exit
