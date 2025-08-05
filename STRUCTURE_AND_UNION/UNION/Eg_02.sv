module union_example;
  union{
    longint x;
    int y;
  }example;
  initial begin
    example.x=64'heeee_abcf_10cd;
    $display("value of x=%h",example.x);
    
    example.y=32'h12cd;
    $display("value of y=%h",example.y);
    
    $display("value of x=%h",example.x);
    $display("value of example %p",example);    
  end
endmodule

// output
# run -all
# value of x=0000eeeeabcf10cd
# value of y=000012cd
# value of x=0000eeee000012cd
# value of example '{x:262705969631949, y:4813}
# exit
