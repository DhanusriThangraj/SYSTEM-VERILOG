class sample; //not consecutive ones
  rand bit [7:0]a;
  constraint c1 {foreach(a[i])
                           if(a[i]==1&&i<7)
                             a[i+1]==0;}
endclass
                           
module example;
  initial begin
    sample s1=new();
    repeat(5)begin
      s1.randomize();
      $display("a=%0b",s1.a);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 13:40 2025
a=10010001
a=100101
a=1010001
a=1001001
a=10000000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Sep  3 13:40:13 2025
Done
