class sample;
  rand int a[];
  constraint c1 { a.size()==10;
                 foreach (a[i])
                 {a[i] inside {[1:100]};
                  a[i]%2==0;
                 if(i>0)
                   a[i]>a[i-1];}}
endclass

module example;
  initial begin
    sample s1=new();
    s1.randomize();
    foreach (s1.a[i])begin
      $display("a[%0d]=[%0d]",i,s1.a[i]);
    end
  end
endmodule

//output
  Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 02:12 2025
a[0]=[24]
a[1]=[26]
a[2]=[28]
a[3]=[70]
a[4]=[74]
a[5]=[80]
a[6]=[82]
a[7]=[84]
a[8]=[98]
a[9]=[100]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.650 seconds;       Data structure size:   0.0Mb
Wed Sep  3 02:12:28 2025
Done               
