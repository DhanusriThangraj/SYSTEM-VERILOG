class base_class;
  int a;
  function void calculation();
    $display("Display the values of the a=%0d",a);
  endfunction
endclass
class sub_class extends base_class;
  int b;
  function void display();
    $display("Display the values of the b=%0h",b);
  endfunction
endclass

module example;
  sub_class s1;
  initial begin
    s1=new();
    s1.a=12345;
    s1.calculation();
    s1.b=5678;
    s1.display();
  end
endmodule

// output
# run -all
# Display the values of the a=12345
# Display the values of the b=162e
# exit
