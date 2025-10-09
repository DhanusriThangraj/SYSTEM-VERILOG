// Code your testbench here
// or browse Examples

module example;
  bit clock;
  bit a;
  bit b;  
  event process; 
  initial begin
    clock=0;
    forever #5 clock = ~clock;
  end  
  initial begin
    fork
      #5 ->process; 
      begin
        a=1;
        #4 wait(a==1);
        $display("-----wait happens-----",$time);
      end
      
      begin
        #4 @(posedge clock);
        $display("-----capture happens-----",$time);
      end

    join
  end  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
     #1000 $finish;
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 05:39 2025
-----wait happens-----                   4
-----capture happens-----                   5
$finish called from file "testbench.sv", line 40.
$finish at simulation time                 1000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 1000 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Thu Oct  9 05:39:00 2025
Finding VCD file...
./dump.vcd
[2025-10-09 09:39:01 UTC] Opening EPWave...
Done
