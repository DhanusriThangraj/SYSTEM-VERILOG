class example;
  rand bit a[];
  constraint c1 {a.size()==30;}
  constraint c2 {foreach(a[i])
    if(i%6==0||i%6==1||i%6==2)
                   a[i]==1;
                 else if(i%6==4||i%6==3||i%6==5)
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 03:28 2025
111000111000111000111000111000           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Thu Sep  4 03:28:28 2025
Done
