module union_example;
 typedef union{
    bit [7:0] a;
    logic [7:0] b ;
  }trail;
  trail u;
  initial begin
    u.a=8'haa;
    $display("values of a %0h",u.a);
    u.b=8'hcd;
    $display("values of b %0h",u.b);  
    $display("values of a %0h",u.a); 
    $display("values of trail %p",u);
    
  end 
endmodule

// output
# run -all
# values of a aa
# values of b cd
# values of a cd
# values of trail '{a:205, b:205}
# exit
