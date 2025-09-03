class sample;
  rand int data;
  constraint c1 { soft data < 30;}
endclass

module sample;
  initial begin
    sample s1;
    s1=new();
    s1.randomize() with {data == 40;};
    $display("data=%0d",s1.data);
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 14:31 2025
data=40
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Wed Sep  3 14:31:54 2025
Done
