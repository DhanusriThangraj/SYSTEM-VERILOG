
class example;
  randc bit [1:0]a[3][2];
endclass

module sample;
  initial begin
      example e1;
      e1=new();
      
    repeat (10)begin
      e1.randomize();
      foreach(e1.a[i,j])begin
        $display("[%0d][%0d]a=%b",i,j,e1.a[i][j]); end
    end
    
  end 
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 00:38 2025
[0][0]a=11
[0][1]a=10
[1][0]a=10
[1][1]a=10
[2][0]a=01
[2][1]a=11
[0][0]a=01
[0][1]a=00
[1][0]a=00
[1][1]a=01
[2][0]a=00
[2][1]a=01
[0][0]a=00
[0][1]a=01
[1][0]a=01
[1][1]a=11
[2][0]a=11
[2][1]a=00
[0][0]a=10
[0][1]a=11
[1][0]a=11
[1][1]a=00
[2][0]a=10
[2][1]a=10
[0][0]a=10
[0][1]a=10
[1][0]a=11
[1][1]a=11
[2][0]a=01
[2][1]a=10
[0][0]a=00
[0][1]a=11
[1][0]a=00
[1][1]a=00
[2][0]a=10
[2][1]a=11
[0][0]a=01
[0][1]a=00
[1][0]a=10
[1][1]a=10
[2][0]a=00
[2][1]a=01
[0][0]a=11
[0][1]a=01
[1][0]a=01
[1][1]a=01
[2][0]a=11
[2][1]a=00
[0][0]a=01
[0][1]a=01
[1][0]a=01
[1][1]a=00
[2][0]a=11
[2][1]a=01
[0][0]a=00
[0][1]a=11
[1][0]a=00
[1][1]a=01
[2][0]a=10
[2][1]a=00
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Tue Sep 30 00:38:56 2025
Done
