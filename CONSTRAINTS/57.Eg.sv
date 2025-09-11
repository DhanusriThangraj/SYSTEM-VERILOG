class example;
  rand bit [3:0]array[4][4];
  constraint c1 {foreach(array[i])
  {foreach(array[j])
  {
    if(i==$size(array)-j-1)
      array[i][j]==0;
    else
      array[i][j]==1;
  }}}
endclass
   
module sample;
  initial begin
    example e1;
    e1=new();
    e1.randomize();
    foreach(e1.array[i])begin 
      foreach(e1.array[,j])begin
        $write("[%0d]",e1.array[i][j]);
      end
        $display("\n");
    end
  end
endmodule

 //output
   Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  5 02:39 2025
[1][1][1][0]

[1][1][0][1]

[1][0][1][1]

[0][1][1][1]

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Fri Sep  5 02:39:26 2025
Done
   
   
