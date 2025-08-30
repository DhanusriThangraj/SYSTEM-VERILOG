class sample;
  rand bit   [5:0]a[15]; ascending order odd number 
  constraint c1 { foreach(a[i])
  {a[i]%2!=0;
        if(i>0)
          a[i]>a[i-1];}} 
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 07:06 2025
A[0]=[1]
A[1]=[3]
A[2]=[5]
A[3]=[7]
A[4]=[11]
A[5]=[15]
A[6]=[17]
A[7]=[21]
A[8]=[23]
A[9]=[31]
A[10]=[47]
A[11]=[51]
A[12]=[59]
A[13]=[61]
A[14]=[63]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.690 seconds;       Data structure size:   0.0Mb
Sat Aug 30 07:06:39 2025
Done
