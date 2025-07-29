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
  sample s2; //without creating the object it gives the null pointer 
  initial begin
    s1.x=12;
    s1.y=121;
    s1.sum;
    s2.x=12;
    s2.y=11;
    s2.sum;
  end
endmodule



// output
xcelium> run
output of the a=12,b=121 = sum=133
xmsim: *E,TRNULLID: NULL pointer dereference.
          File: ./testbench.sv, line = 143, pos = 5
         Scope: sum
          Time: 0 FS + 0

./testbench.sv:143     s2.x=12;
xcelium> exit
