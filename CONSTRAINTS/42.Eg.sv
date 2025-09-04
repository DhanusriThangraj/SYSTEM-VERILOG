class example;  //any pattern generation
   bit pattern;
   bit prev_pattern;
   bit [7:0]count;
  rand bit [7:0] rep;
  
  function void pre_randomize();
    if(rep!=0)begin
      if(count<(rep-1))
        count=count+1;
      else
        count=0;
    end
      else
        count=0;
    
    prev_pattern=pattern;
  endfunction
  
    function void post_randomize();
      pattern=(count==0)?~prev_pattern:pattern;
  endfunction
  
endclass

module sample;
  initial begin
    example e=new();
    repeat(30)begin
      e.randomize() with {e.rep==5;};
      $write("%0b",e.pattern);
    end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 03:51 2025
111110000011111000001111100000           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Thu Sep  4 03:51:04 2025
Done
