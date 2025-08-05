module union_example;
  union{
  int a;
  byte b;}trail;
  initial begin
    trail.a=16'hffff;
    $display("value of a %h",trail.a);
    
    trail.b=8'h7a;
    $display("value of b %h",trail.b);
    
    $display("value of a %h",trail.a);
    
    $display("value of union %p",trail);
  end
endmodule
// output
# run -all
# value of a 0000ffff
# value of b 7a
# value of a 0000ff7a
# value of union '{a:65402, b:122} //a's and b's decimal value
# exit
