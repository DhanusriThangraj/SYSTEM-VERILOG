class example;
  rand bit [2:0]array[3][3];
  constraint c1 {foreach(array[i])
  {foreach(array[j])
  {
    if(i==j)
      array[i][j]==0;
    else
      array[i][j]!=0;
  }}}
endclass
    
module sample;
  initial begin
    example e1;
    e1=new();
    e1.randomize();
    foreach(e1.array[i])begin
      foreach(e1.array[j])begin
        $write("[%0d]",e1.array[i][j]);
      end
        $display("\n");
    end
  end
endmodule


//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  5 01:53 2025
[0][4][2]

[1][0][7]

[2][4][0]

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Fri Sep  5 01:53:47 2025
Done
   
