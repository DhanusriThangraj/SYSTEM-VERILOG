class sample;
  rand int a[];
  constraint c1 {a.size()==15;}
  constraint c2  {foreach (a[i])
    a[i]==fact(i+1);}
  
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
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A[0]=1
A[1]=2
A[2]=6
A[3]=24
A[4]=120
A[5]=720
A[6]=5040
A[7]=40320
A[8]=362880
A[9]=3628800
A[10]=39916800
A[11]=479001600
A[12]=1932053504
A[13]=1278945280
A[14]=2004310016
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 04, 2025 at 01:35:55 EDT  (total: 00:00:02)
Done
