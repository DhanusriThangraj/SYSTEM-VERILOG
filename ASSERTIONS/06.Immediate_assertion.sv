module immediate_assertion;
  bit clk;
  bit a;
  bit b;

  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    
    repeat(10)begin
      @(posedge clk);
      a=$random;
      b=$random;
    end
    
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #150 $finish;
  end
  
  always @(posedge clk) begin
    assert(a&&b)
      $display("--assertion is passed--",$time);
   end
  
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 13 10:15 2025
"testbench.sv", 28: immediate_assertion.unnamed$$_0: started at 5ns failed at 5ns
	Offending '(a && b)'
--assertion is passed--                  15
--assertion is passed--                  25
"testbench.sv", 28: immediate_assertion.unnamed$$_0: started at 35ns failed at 35ns
	Offending '(a && b)'
--assertion is passed--                  45
"testbench.sv", 28: immediate_assertion.unnamed$$_0: started at 55ns failed at 55ns
	Offending '(a && b)'
"testbench.sv", 28: immediate_assertion.unnamed$$_0: started at 65ns failed at 65ns
	Offending '(a && b)'
"testbench.sv", 28: immediate_assertion.unnamed$$_0: started at 75ns failed at 75ns
	Offending '(a && b)'
"testbench.sv", 28: immediate_assertion.unnamed$$_0: started at 85ns failed at 85ns
	Offending '(a && b)'
--assertion is passed--                  95
--assertion is passed--                 105
--assertion is passed--                 115
--assertion is passed--                 125
--assertion is passed--                 135
--assertion is passed--                 145
$finish called from file "testbench.sv", line 24.
$finish at simulation time                  150
           V C S   S i m u l a t i o n   R e p o r t 
Time: 150 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Mon Oct 13 10:15:17 2025
Finding VCD file...
./dump.vcd
[2025-10-13 14:15:17 UTC] Opening EPWave...
Done
