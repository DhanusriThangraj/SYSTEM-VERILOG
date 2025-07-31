virtual class sample;
  int a;
 function void display();
    a=3456789;
    $display("values of a=%0d",a);
  endfunction
endclass
module example;
  sample s1=new();
  initial begin 
    s1.display();
  end
endmodule

// output
sample s1=new();
          |
xmvlog: *E,CNIABC (testbench.sv,242|10): An abstract (virtual) class cannot be instantiated.
