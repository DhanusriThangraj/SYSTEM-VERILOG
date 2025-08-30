class sample;
  rand bit   [5:0]a[15];
  constraint c1 { foreach(a[i])
  {a[i]%2!=0};} 
endclass

module example;
  initial begin
    sample e1;
    e1=new();
    e1.randomize();
    foreach(e1.a[i])begin
      $display("A[%0d]=[%0d]",i, e1.a[i]);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 06:59 2025
A[0]=[27]
A[1]=[49]
A[2]=[11]
A[3]=[5]
A[4]=[43]
A[5]=[31]
A[6]=[19]
A[7]=[9]
A[8]=[7]
A[9]=[5]
A[10]=[29]
A[11]=[61]
A[12]=[43]
A[13]=[43]
A[14]=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Aug 30 06:59:32 2025
Done
