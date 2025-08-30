
// generating the even number
class sample;
  rand bit   [5:0]a[15];
  constraint c1 { foreach(a[i])
  {a[i]%2==0};} 
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 06:57 2025
A[0]=[26]
A[1]=[48]
A[2]=[10]
A[3]=[4]
A[4]=[42]
A[5]=[30]
A[6]=[18]
A[7]=[8]
A[8]=[6]
A[9]=[4]
A[10]=[28]
A[11]=[60]
A[12]=[42]
A[13]=[42]
A[14]=[0]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Sat Aug 30 06:57:32 2025
Done
