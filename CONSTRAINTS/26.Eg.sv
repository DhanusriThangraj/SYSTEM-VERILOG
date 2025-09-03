
class example;
  rand bit [10:0] data;
  rand bit [4:0] shift;
  constraint c1 {(data==1<<shift)-1;} //consecutive ones
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 05:02 2025
Data=11101101101,Shift=12
Data=10001010010,Shift=19
Data=110101000,Shift=24
Data=110110001,Shift=17
Data=10100000100,Shift=9
Data=11010110001,Shift=22
Data=10111000101,Shift=2
Data=100111111,Shift=20
Data=1011101001,Shift=31
Data=1001010000,Shift=22
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Wed Sep  3 05:02:54 2025
Done
