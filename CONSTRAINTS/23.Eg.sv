class example;
  rand int data;
  constraint c1 {data dist {10:/4,15:/10,[6:8]:/20};}
endclass
module sample;
    initial begin
      example e=new();
      repeat(20)begin
         e.randomize();
        $display("DATA=%0d",e.data);
      end 
    end
endmodule
// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 04:25 2025
DATA=15
DATA=6
DATA=6
DATA=15
DATA=15
DATA=6
DATA=15
DATA=6
DATA=15
DATA=15
DATA=6
DATA=15
DATA=8
DATA=15
DATA=15
DATA=8
DATA=15
DATA=15
DATA=8
DATA=15
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Wed Sep  3 04:25:58 2025
Done
