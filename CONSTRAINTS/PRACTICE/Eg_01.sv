class example;
rand bit [2:0]a;
rand bit [2:0]b;
  
  constraint c1 {a==5;
                 b==4;};
   

endclass

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

//output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 01:54 2025
A=5-----B=4
A=5-----B=4
A=5-----B=4
A=5-----B=4
A=5-----B=4
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Wed Oct  8 01:54:11 2025
Done
