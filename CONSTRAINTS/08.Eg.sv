class example;
  rand int a[5][4];
  constraint c1 { foreach(a[i,j])
  {a[i][j]==i};}
endclass

module example;
  example e1;
  initial begin
    e1=new();
    e1.randomize();
    foreach(e1.a[i,j])begin
      $display("A[%0d][%0d]=[%0d]",i,j,e1.a[i][j]);
    end
  end
endmodule


// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 05:59 2025
A[0][0]=[0]
A[0][1]=[0]
A[0][2]=[0]
A[0][3]=[0]
A[1][0]=[1]
A[1][1]=[1]
A[1][2]=[1]Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 05:59 2025
A[0][0]=[0]
A[0][1]=[0]
A[0][2]=[0]
A[0][3]=[0]
A[1][0]=[1]
A[1][1]=[1]
A[1][2]=[1]
A[1][3]=[1]
A[2][0]=[2]
A[2][1]=[2]
A[2][2]=[2]
A[2][3]=[2]
A[3][0]=[3]
A[3][1]=[3]
A[3][2]=[3]
A[3][3]=[3]
A[4][0]=[4]
A[4][1]=[4]
A[4][2]=[4]
A[4][3]=[4]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Aug 30 05:59:29 2025
Done
A[1][3]=[1]
A[2][0]=[2]
A[2][1]=[2]
A[2][2]=[2]
A[2][3]=[2]
A[3][0]=[3]
A[3][1]=[3]
A[3][2]=[3]
A[3][3]=[3]
A[4][0]=[4]
A[4][1]=[4]
A[4][2]=[4]
A[4][3]=[4]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Aug 30 05:59:29 2025
Done
