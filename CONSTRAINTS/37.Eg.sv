
class sample;
  rand int a[];
  constraint c1 {a.size()==5;}//generate first 5 odd numbers
  constraint c2  {foreach (a[i])
    a[i]==fact((i+1)*2)-1;}
  
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
A[0]=1
A[1]=23
A[2]=719
A[3]=40319
A[4]=3628799
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
