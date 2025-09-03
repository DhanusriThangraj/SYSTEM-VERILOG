class example;
  rand bit [10:0] data;
  rand bit [4:0] shift;
  constraint c1 {data==1<<shift;}
endclass
  
  module sample;
    initial begin
      example e1=new();
      repeat(10)begin
        e1.randomize();
        $display("Data=%0b,Shift=%0d",e1.data,e1.shift);
      end
    end
  endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 04:50 2025
Data=10000,Shift=4
Data=1000000,Shift=6
Data=100000000,Shift=8
Data=1000000,Shift=6
Data=1000,Shift=3
Data=10000000,Shift=7
Data=1,Shift=0
Data=1000000,Shift=6
Data=10000000000,Shift=10
Data=10000000,Shift=7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Wed Sep  3 04:50:03 2025
Done
