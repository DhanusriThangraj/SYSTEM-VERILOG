class example_class;
    protected int i;
endclass

class example1 extends example_class;
   function void display(int a);
    i=a;
    $display("values of i=%0d",i);
  endfunction
endclass

module example;
  initial begin
    example1 e1;
    e1=new();
    e1.display(23);  
    e1.i=12;
    $display("i=%0d",e1.i);
  end
endmodule

// output
Error-[SV-ICVA] Illegal class variable access
