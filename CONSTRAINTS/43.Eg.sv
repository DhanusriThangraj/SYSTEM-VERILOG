class example;
  rand int data;
  constraint c1 {data inside {[1:50]};}
endclass

module sample;
  initial begin
    example e1,e2;
    e1=new();
    e2=new();
    e1.randomize();
    e2.randomize();
    $display("data=%0d",e1.data); 
    $display("data=%0d",e2.data); 
   
    e1.c1.constraint_mode(0);
    
    e1.randomize();
    e2.randomize();
    $display("data=%0d",e1.data); 
    $display("data=%0d",e2.data);
       
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 05:22 2025
data=11
data=4
data=1888924327
data=50
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Thu Sep  4 05:22:47 2025
Done
