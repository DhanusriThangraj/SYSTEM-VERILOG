module test;
  
 class abc;
function void display(input int a, input int b=0);
  $display ("value of a = %0d, b = %0d", a,b);
endfunction
endclass
 
initial begin
abc obj;
obj = new();
obj.display(3);
end
  
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 05:26 2025
value of a = 3, b = 0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.320 seconds;       Data structure size:   0.0Mb
Sat Oct 11 05:26:49 2025
Done
