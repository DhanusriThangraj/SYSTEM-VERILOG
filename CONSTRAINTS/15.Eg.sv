class example;
  rand bit [5:0]a[16];
  constraint c1 {
    foreach (a[i])
    {a[i]%2==0;
     foreach(a[j])
     {if(i!=j)
       a[i]!=a[j];
     }}}
endclass
module sample;
  initial begin
    example s1=new();
    s1.randomize();
    foreach(s1.a[i])begin
      $display("a[%0d]=[%0d]",i,s1.a[i]);end
  end
endmodule
     
// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 07:28 2025
a[0]=[22]
a[1]=[24]
a[2]=[40]
a[3]=[16]
a[4]=[52]
a[5]=[10]
a[6]=[26]
a[7]=[2]
a[8]=[34]
a[9]=[36]
a[10]=[6]
a[11]=[48]
a[12]=[0]
a[13]=[28]
a[14]=[50]
a[15]=[38]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.840 seconds;       Data structure size:   0.0Mb
Sat Aug 30 07:28:58 2025
Done
     
