module test;
class abc;
static int sum;
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

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 02:52 2025
objl sum=70, obj2 sum=70
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Sat Oct 11 02:52:06 2025
Done


---------------- explanation -----------------

obj1.calc(10,20) → sum = 30

obj2.calc(30,40) → sum = 70 (overwrites previous 30)

Both obj1.sum and obj2.sum show 70, because there is only one static sum.
