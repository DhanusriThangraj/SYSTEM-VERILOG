class example;
  rand int data[];
  constraint c1 {data.size()==15;}
  constraint c2 { foreach(data[i])
  { data[i]==i;
    if(i>0)
      data[i]>data[i-1];}}
endclass

module sample;
  initial begin
    example e1;
    e1=new();
    e1.randomize();
    foreach (e1.data[i])begin
      $display("DATA[%0d]=[%0d]",i,e1.data[i]);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 05:56 2025
DATA[0]=[0]
DATA[1]=[1]
DATA[2]=[2]
DATA[3]=[3]
DATA[4]=[4]
DATA[5]=[5]
DATA[6]=[6]
DATA[7]=[7]
DATA[8]=[8]
DATA[9]=[9]
DATA[10]=[10]
DATA[11]=[11]
DATA[12]=[12]
DATA[13]=[13]
DATA[14]=[14]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Thu Sep  4 05:56:58 2025
Done                 
        
            
