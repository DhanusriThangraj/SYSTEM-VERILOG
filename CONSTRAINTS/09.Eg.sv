// class sample;  //static 
  rand int a[10];
  constraint c1 { foreach(a[i])
  {a[i]==i*i};}
endclass
module example;
  initial begin
      sample s1=new();
    s1.randomize();
    foreach(s1.a[i])begin
      $display("A[%0d]=[%0d]",i,s1.a[i]);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 06:36 2025
A[0]=[0]
A[1]=[1]
A[2]=[4]
A[3]=[9]
A[4]=[16]
A[5]=[25]
A[6]=[36]
A[7]=[49]
A[8]=[64]
A[9]=[81]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Aug 30 06:36:15 2025
Done
