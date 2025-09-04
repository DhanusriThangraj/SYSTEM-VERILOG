// without array ascending order
class example;
  rand int data;
   int next_data;
  constraint c1 {data==next_data;}
  function void pre_randomize();
    next_data++;
  endfunction
    
endclass

module sample;
  initial begin
    example e1=new();
    repeat (10)begin
          e1.randomize();
      $display("DATA=%0d",e1.data);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 06:08 2025
DATA=1
DATA=2
DATA=3
DATA=4
DATA=5
DATA=6
DATA=7
DATA=8
DATA=9
DATA=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Thu Sep  4 06:08:36 2025
Done
