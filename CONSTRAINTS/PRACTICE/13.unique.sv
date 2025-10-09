class example;
  rand bit [3:0]a; 
  rand bit [2:0]b[7:0];
  constraint c2 {unique {a inside{1,2,3,4,5}};}
  constraint c3 {unique {b};}
  
 
endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();
   
    
    repeat(5)begin

      e1.randomize();
      $display("A=%0d",e1.a);
    end
    

    $display("B=%0p",e1.b);

  end
endmodule

/output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 04:58 2025
A=13
A=6
A=1
A=2
A=4
B='{'h6, 'h7, 'h2, 'h5, 'h1, 'h0, 'h3, 'h4} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Oct  8 04:58:34 2025
Done
