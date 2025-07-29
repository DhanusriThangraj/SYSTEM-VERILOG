class sample;
  int x;
  int y;
  function void sum();
    int result;
    result=x+y;
    $display("output of the a=%0d,b=%0d = sum=%0d",x,y,result);
  endfunction
endclass
module sum;
  sample s1=new();
  initial begin
    s1.x=12;
    s1.y=121;
    s1.sum;
   
    s1.x=12;
    s1.y=11;
    s1.sum;
  end
endmodule


// output
xcelium> run
output of the a=12,b=121 = sum=133
output of the a=12,b=11 = sum=23
xmsim: *W,RNQUIE: Simulation is complete.
