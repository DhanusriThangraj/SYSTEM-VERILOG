
class sample;
  rand bit [5:0]a[15];  //ascending order even number
  constraint c1 { foreach(a[i])
      {a[i]%2==0;
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 07:03 2025
A[0]=[16]
A[1]=[22]
A[2]=[24]
A[3]=[28]
A[4]=[30]
A[5]=[32]
A[6]=[34]
A[7]=[36]
A[8]=[42]
A[9]=[46]
A[10]=[48]
A[11]=[50]
A[12]=[52]
A[13]=[54]
A[14]=[56]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.680 seconds;       Data structure size:   0.0Mb
Sat Aug 30 07:03:13 2025
Done                 
