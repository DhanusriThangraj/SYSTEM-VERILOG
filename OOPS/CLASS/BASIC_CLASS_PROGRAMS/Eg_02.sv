class sample;
  int a;
  function sample;
    $display("the value of a=%0d",a);
  endfunction
endclass
module test;
    sample s1=new();
  initial begin
  //sample s1=new();
   s1.a=15;
    s1.sample;
  end
endmodule

// output
# run -all
# the value of a=15
# exit
