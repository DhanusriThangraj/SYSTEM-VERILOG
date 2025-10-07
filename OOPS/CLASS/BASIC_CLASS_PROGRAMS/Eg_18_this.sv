class child1 ;
  int a;
  int b;
  function void value(int a,int b);
    this.a=a**b;
    this.b=b**a;
    display(a,b);
    display(this.a,this.b);
  endfunction
  
  function display(int a, int b);
    $display("a=%d b=%d",a,b);
  endfunction
  
endclass
module sample;
      child1 c_1,c_2,c_3;  
    initial begin
      c_1=new();  
      c_1.value(2,7);
    end
endmodule
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 01:54 2025
a=          2 b=          7
a=        128 b=         49
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Tue Oct  7 01:54:02 2025
Done
