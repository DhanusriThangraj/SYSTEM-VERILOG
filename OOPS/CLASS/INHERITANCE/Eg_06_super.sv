
class parent_class;
  int a,b;
  int sum;
  function void sum1(int a,int b);
    sum=a+b;
    $display("values of sum=%0d",sum);
  endfunction
endclass
class child_1 extends parent_class;
  int sub;
  function void sub1(int a,int b);
    super.sum1(a,b);
    sub=a-b;
    $display("values of sub=%0d",sub);
  endfunction
endclass

class child_2 extends child_1;
  int mul;
  function void mul1(int a,int b);
    super.sub1(a,b);
    mul =a*b;
    $display("values of mul=%0d",mul);
  endfunction
endclass

class child_3 extends child_2;
  int div;
  function void div1(int a,int b);
    super.mul1(a,b);
    div=a/b;
    $display("values of div=%0d",div);
  endfunction
endclass
  
module example;
  child_3 c3;
  initial begin
    c3=new();
    c3.div1(78,74);
    
    $display("DISPLAY THE VALUES OF THE\nSUM=%0d\nSUB=%0d\nMUL=%0d\nDIV=%0d",c3.sum,c3.sub,c3.mul,c3.div);
    
  end
endmodule


// output
xcelium> run
values of sum=152
values of sub=4
values of mul=5772
values of div=1
DISPLAY THE VALUES OF THE
SUM=152
SUB=4
MUL=5772
DIV=1
xmsim: *W,RNQUIE: Simulation is complete.
