module test;
class abc;
 int sum;                                                     //non_static_variable
function int calc(input int a, input int b);
this.sum=a+ b;
return sum;
endfunction
endclass
  
initial begin
abc obj1, obj2;

  obj1 =new();

  obj2 =new();

 obj1.calc(10,20);
 obj2.calc(30,40);

  $display("objl sum=%0d, obj2 sum=%0d", obj1.sum, obj2.sum);

end

endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 03:04 2025
objl sum=30, obj2 sum=70
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.320 seconds;       Data structure size:   0.0Mb
Sat Oct 11 03:04:37 2025
Done

-------------------------------explanation-------------------------
Non-static = per object memory

Static = shared memory for all objects

In your code, each obj1 and obj2 has its own sum, so the two calls affect different sums.
