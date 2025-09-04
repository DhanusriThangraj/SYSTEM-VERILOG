class sample;
  rand bit [7:0]data;
  constraint c1 {soft data > 40;}
endclass

class example extends sample;
  constraint c2 {data < 30;}
endclass

module mm;
  initial begin
    example e=new();
    repeat(5)begin
      e.randomize();
      $display("DATA=%0d",e.data);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 02:34 2025
DATA=21
DATA=10
DATA=3
DATA=5
DATA=16
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Thu Sep  4 02:34:53 2025
Done
