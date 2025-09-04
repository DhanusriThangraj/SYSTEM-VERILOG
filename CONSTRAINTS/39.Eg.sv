class example; //pattern generation
  rand bit a;
       bit b=0;
  constraint c1 {a!=b;}
  function void post_randomize();
    b=a;
  endfunction
endclass

module sample;
  initial begin
    example e=new();
    repeat(10)begin
      e.randomize();
      $write("%0b",e.a);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 02:50 2025
1010101010           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Thu Sep  4 02:50:50 2025
Done
