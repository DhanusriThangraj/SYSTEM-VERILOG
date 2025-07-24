class sample;
  int a;
  int b;
  
  function new(int a1,int b1);
    a=a1;
    b=b1;
    $display("display the values of sample a=%0d,b=%0d",a,b);
  endfunction
  function void sample2(int a1,int b1);
    a=a1;
    b=b1;
    $display("display the avlues of the sample2 a=%0d, b=%0d",a,b);
  endfunction
    
endclass
module sample;
  sample s1;
   initial begin
     s1=new(10,20);
     s1.sample2(14,208);
     $display("the values of a=%0d and b=%0d ",s1.a,s1.b);

  end
endmodule

// output
xcelium> run
display the values of sample a=10,b=20
display the avlues of the sample2 a=14, b=208
the values of a=14 and b=208 
xmsim: *W,RNQUIE: Simulation is complete.
