class parent_class;
  int sum;
  function void sum1(int a,int b);
    sum=a+b;
    $display("values of sum=%0d",sum);
  endfunction
endclass
class child_1 extends parent_class;
  int sub;
  function void sub1(int a,int b);
    sub=a-b;
    $display("values of sub=%0d",sub);
  endfunction
endclass
class child_2 extends child_1;
  int mul;
  function void mul1(int a,int b);
    mul =a*b;
    $display("values of mul=%0d",mul);
  endfunction
endclass

class child_3 extends child_2;
  int div;
  function void div1(int a,int b);
    div=a/b;
    $display("values of div=%0d",div);
  endfunction
endclass
  
module example;
  child_3 c3;
  initial begin
    c3=new();
    c3.sum1(987,741);
    c3.sub1(45,90);
    c3.mul1(45,89);
    c3.div1(9876,8); 
    $display("DISPLAY THE VALUES OF THE\nSUM=%0d\nSUB=%0d\nMUL=%0d\nDIV=%0d",c3.sum,c3.sub,c3.mul,c3.div);    
  end
endmodule

// output
xcelium> run
values of sum=1728
values of sub=-45
values of mul=4005
values of div=1234
DISPLAY THE VALUES OF THE
SUM=1728
SUB=-45
MUL=4005
DIV=1234
xmsim: *W,RNQUIE: Simulation is complete.

  
