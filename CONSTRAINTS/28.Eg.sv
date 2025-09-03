class sample;
  rand int data;
endclass

module sample;
  initial begin
    sample s1=new();
    s1.randomize with {data==10;};
    $display("data=%0d",s1.data);
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 14:15 2025
data=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Sep  3 14:15:01 2025
Done
