class example;
  rand bit a[];
  constraint c1 {a.size()==16;}
  constraint c2 {foreach(a[i])
           if(i%4==0||i%4==1)
                   a[i]==1;
                 else if(i%4==2||i%4==3)
                   a[i]==0;}
endclass

module sample;
  initial begin
    example e=new();
     e.randomize();
    foreach (e.a[i])begin
      $write("%0b",e.a[i]);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 03:17 2025
1100110011001100           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.530 seconds;       Data structure size:   0.0Mb
Thu Sep  4 03:17:08 2025
Done
