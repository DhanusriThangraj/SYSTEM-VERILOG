class base;
  
  static int i;
  static function void get(); 
    int a;
     a++;                             //local
     i++;                            //static
    $display ("A=%0d",a);
    $display ("I=%0d",i);
    $display("---------------");
endfunction
endclass

module test();
  
base b1_h,b2_h;
  
initial begin

    b1_h= new();
    b2_h= new();
  
b1_h.get();

b1_h.get();

b2_h.get();

end

endmodule
// output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 03:38 2025
A=1
I=1
---------------
A=1
I=2
---------------
A=1
I=3
---------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Sat Oct 11 03:38:33 2025
Done



