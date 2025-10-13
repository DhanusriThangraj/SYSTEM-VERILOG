module concurrent_assertion;
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

  
  sequence s1;
    a ##3 b;
  endsequence
  
  property p1;  
    @(posedge clk) s1;
  endproperty
  
  
  assert property (p1)
    
     $display("a=%0b b=%0b  out=%0b                            --assertion is passed--",a,b,a&&b,$time);
    else
      $display("a=%0b b=%0b  out=%0b                            --assertion is failed--",a,b,a&&b,$time);
  
endmodule
	  

    //output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 13 10:40 2025
"testbench.sv", 37: concurrent_assertion.unnamed$$_4: started at 5ns failed at 5ns
	Offending 'a'
a=0 b=1  out=0                            --assertion is failed--                   5
"testbench.sv", 37: concurrent_assertion.unnamed$$_4: started at 15ns failed at 15ns
	Offending 'a'
a=1 b=1  out=1                            --assertion is failed--                  15
a=0 b=1  out=0                            --assertion is passed--                  55
"testbench.sv", 37: concurrent_assertion.unnamed$$_4: started at 65ns failed at 65ns
	Offending 'a'
a=1 b=0  out=0                            --assertion is failed--                  65
a=1 b=0  out=0                            --assertion is passed--                  65
"testbench.sv", 37: concurrent_assertion.unnamed$$_4: started at 45ns failed at 75ns
	Offending 'b'
a=1 b=0  out=0                            --assertion is failed--                  75
"testbench.sv", 37: concurrent_assertion.unnamed$$_4: started at 55ns failed at 85ns
	Offending 'b'
a=1 b=0  out=0                            --assertion is failed--                  85
a=1 b=1  out=1                            --assertion is passed--                 105
a=1 b=1  out=1                            --assertion is passed--                 115
a=1 b=1  out=1                            --assertion is passed--                 125
a=1 b=1  out=1                            --assertion is passed--                 135
a=1 b=1  out=1                            --assertion is passed--                 145
$finish called from file "testbench.sv", line 24.
$finish at simulation time                  150
           V C S   S i m u l a t i o n   R e p o r t 
Time: 150 ns
CPU Time:      0.330 seconds;       Data structure size:   0.0Mb
Mon Oct 13 10:40:34 2025
Finding VCD file...
./dump.vcd
[2025-10-13 14:40:34 UTC] Opening EPWave...
Done
