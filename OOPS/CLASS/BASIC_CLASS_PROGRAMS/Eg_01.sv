class sample;
  int a;
  int b;
  function void display();
    $display("values of a=%0b ,b=%0b",a,b);
  endfunction
endclass

module sample;
  sample s1;
  initial begin
    s1=new();
    s1.a=17;
    s1.display();
    s1.b=9;
    s1.display();   
  end
endmodule

// output
# run -all
# values of a=10001 ,b=0
# values of a=10001 ,b=1001
# exit
