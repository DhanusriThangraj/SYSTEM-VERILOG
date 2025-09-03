class example;
  rand int d;
  constraint c1 {d inside {[1:100]};
                 if (d%2==0)
                   unique{d};}
                   
endclass

module example;
  initial begin
    example e=new();
    repeat(10)begin
          e.randomize();
      $display("d=%0d",e.d);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 04:00 2025
d=22
d=30
d=57
d=58
d=64
d=28
d=80
d=39
d=46
d=58
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Wed Sep  3 04:00:17 2025
Done
