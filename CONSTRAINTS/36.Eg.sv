class sample;
  rand int a[];
  constraint c1 {a.size()==5;} //generate first 5 even numbers
  constraint c2  {foreach (a[i])
    a[i]==fact((i+1)*2);}
  
  function int fact(int num);
    if(num==0)
      fact=1;
    else
      fact=num*fact(num-1);
  endfunction
endclass

module example;
  initial begin
    sample s=new();
    s.randomize();
    foreach (s.a[i])begin
      $display("A[%0d]=%0d",i,s.a[i]);
    end
  end
endmodule

//output
xcelium> run
A[0]=2
A[1]=24
A[2]=720
A[3]=40320
A[4]=3628800
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
