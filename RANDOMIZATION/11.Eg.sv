class example;
  rand bit [2:0]a;
  randc bit [2:0]b;
  
  function void display();
    $display("A=%0d-----B=%0d",a,b);
  endfunction
  
endclass

module sample;
  example e1;
  initial begin
    e1=new();
    repeat(10)begin
      e1.randomize();
      e1.display();
    end
  end
endmodule

// output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 00:07 2025
A=1-----B=5
A=3-----B=2
A=2-----B=6
A=7-----B=3
A=0-----B=4
A=3-----B=1
A=2-----B=0
A=3-----B=7
A=0-----B=2
A=1-----B=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Wed Oct  8 00:07:43 2025
Done
