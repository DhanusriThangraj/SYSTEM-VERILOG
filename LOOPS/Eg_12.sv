module sample;
  int a[10];
  int i;
  initial begin
    repeat($size(a))begin
      a[i]=i;
      $display("A[%0d]=[%0d]",i,a[i]);
      i++;
    end
  end 
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 04:27 2025
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
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.330 seconds;       Data structure size:   0.0Mb
Sat Aug 30 04:27:46 2025
Done
