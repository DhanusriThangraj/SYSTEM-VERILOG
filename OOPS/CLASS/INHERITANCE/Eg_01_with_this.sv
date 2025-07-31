class example;
  int a=112;
  int b=67;
  function void display();
    int a;
    int b;
    $display("Display the values of the a=%0d and b=%0d",a,b);
    a=123;
    b=678;
    $display("Display the values of the a=%0d and b=%0d",a,b);
    this.a=a;
    this.b=b;
    $display("Display the values of the a=%0d and b=%0d",a,b);
    
  endfunction
endclass

module sample;
  example e1;
  initial begin
    e1=new;
   e1.display();
    $display("values of a=%0d b=%0d",e1.a,e1.b);
  end
endmodule


// output
# run -all
# Display the values of the a=0 and b=0
# Display the values of the a=123 and b=678
# Display the values of the a=123 and b=678
# values of a=123 b=678
# exit
