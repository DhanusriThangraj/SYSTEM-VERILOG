class example;
  rand int a;
  constraint c1 { a dist {[0:69]:/70,[70:100]:/30};}
endclass

module sample;
  initial begin
    example e=new();  
    repeat(20)begin
      e.randomize();
      $display("A=%0d",e.a);
    end
  end
endmodule


// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 04:40 2025
A=1
A=11
A=10
A=51
A=35
A=71
A=92
A=19
A=66
A=91
A=11
A=25
A=97
A=57
A=44
A=65
A=33
A=15
A=46
A=34
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Wed Sep  3 04:40:10 2025
Done
