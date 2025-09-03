class example;
  rand int d;
  constraint c1 { d inside {[1:20]};
                  unique{d};}
                   
endclass

module example;
  initial begin
    example e;
    e=new();
    repeat(10)begin
          e.randomize();
      $display("d=%0d",e.d);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 04:09 2025
d=5
d=9
d=1
d=8
d=4
d=13
d=2
d=7
d=8
d=19
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Sep  3 04:09:17 2025
Done
