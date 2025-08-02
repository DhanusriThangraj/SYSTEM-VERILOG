class example_class;
   local int i;
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
    e1.display(45);   
  end
endmodule

// output
Error-[SV-ICVA-L] Illegal class variable access
