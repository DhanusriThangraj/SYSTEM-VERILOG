class cyclic_dependencies; 
  randc bit[7:0] addr;
  constraint soft_c { soft addr == 10; }
  constraint override_c { if (disable_soft_constraint) {
                               addr == 20;}}
  bit disable_soft_constraint = 0;
endclass
                         
module m1;
      cyclic_dependencies cycle;
initial begin
  cycle = new();
  cycle.disable_soft_constraint = 0;
  cycle.randomize();

  $display("With soft constraint: addr= %d", cycle.addr);

   cycle.disable_soft_constraint = 1;

   cycle.randomize;

$display("Soft constraint overridden: addr = %d", cycle.addr); end

endmodule

                         // output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 03:47 2025
With soft constraint: addr=  10
Soft constraint overridden: addr =  20
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Sat Oct 11 03:47:40 2025
Done
