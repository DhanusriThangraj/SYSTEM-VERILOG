module eg;
  int e[5][4];
  initial begin
    foreach(e[i,j])begin
      e[i][j]=i; 
      $display("E[%0d][%0d]=[%0d]",i,j,e[i][j]);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 03:34 2025
E[0][0]=[0]
E[0][1]=[0]
E[0][2]=[0]
E[0][3]=[0]
E[1][0]=[1]
E[1][1]=[1]
E[1][2]=[1]
E[1][3]=[1]
E[2][0]=[2]
E[2][1]=[2]
E[2][2]=[2]
E[2][3]=[2]
E[3][0]=[3]
E[3][1]=[3]
E[3][2]=[3]
E[3][3]=[3]
E[4][0]=[4]
E[4][1]=[4]
E[4][2]=[4]
E[4][3]=[4]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Sat Aug 30 03:34:17 2025
