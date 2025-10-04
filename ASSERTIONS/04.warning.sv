module sample;
  reg a=1,b=1;
  reg y;
  assign y=a^b;
  
  always @(*)begin
  assert(y)   
    $display("expression evaluates to true"); 
       else   
         $warning("--------expression evaluates to false--------");   end
  
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  4 07:20 2025
"testbench.sv", 12: sample.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'y'
Warning: "testbench.sv", 12: sample.unnamed$$_0: at time 0 ns
--------expression evaluates to false--------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Oct  4 07:20:43 2025
Done
