class example;
  rand bit [3:0]a; 
  static constraint c2 {soft a<4;}
 
endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();
   
    
    repeat(5)begin

      e1.randomize() with {a>4;};
      $display("A=%0d",e1.a);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 04:30 2025
A=14
A=7
A=8
A=6
A=5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Wed Oct  8 04:30:13 2025
Done
