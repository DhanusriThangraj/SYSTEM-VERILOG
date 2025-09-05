class example;
  rand int data[];
  constraint c1 {data.size()==10;}
  constraint c2 {foreach(data[i])
    if(i%2==0)
      data[i]==0;
    else
      data[i]==i;          }
endclass
module sample;
  initial begin
    example e1;
    e1=new();
    e1.randomize();
    foreach(e1.data[i])begin
      $write("%0d",e1.data[i]);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  5 00:40 2025
0103050709           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Fri Sep  5 00:40:57 2025
Done
