class example;
rand bit [2:0]a;
rand bit [2:0]b;
  
  constraint c1; 
endclass
  
constraint example::c1{a>2;
                       b<7;};
   

module sample;
  example e1;
  initial begin
    e1=new();
    
    repeat(5) begin
      e1.randomize();
      $display("A=%0d-----B=%0d",e1.a,e1.b);

    end
  end
endmodule
// output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 01:59 2025
A=4-----B=6
A=7-----B=1
A=4-----B=3
A=6-----B=4
A=6-----B=2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Wed Oct  8 01:59:24 2025
Done
