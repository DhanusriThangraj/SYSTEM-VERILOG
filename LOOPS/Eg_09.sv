module sample;
  int a[10];
  initial begin
    foreach(a[i])begin
      a[i]=i;
      $display("A[%0d]=[%0d]",i,a[i]);
    end
  end
endmodule

// output
xcelium> run
A[0]=[0]
A[1]=[1]
A[2]=[2]
A[3]=[3]
A[4]=[4]
A[5]=[5]
A[6]=[6]
A[7]=[7]
A[8]=[8]
A[9]=[9]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
