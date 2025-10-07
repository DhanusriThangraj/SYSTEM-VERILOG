////nexted class

class shallow;
  int a;
  
  function new(int a);
    this.a = a;
  endfunction
  
endclass

class shallow2;
  shallow s;
  int b=12;
  
    function new();
      s=new(123);
    endfunction
  
    function void display();
  
         $display("A=%0d",s.a);
         $display("B=%0d",b);

  endfunction
  
endclass


module example;
  shallow2 s1,s2;
  initial begin
    s1=new();
    s2=new s1;
    
    s1.display();
    s2.display();
    
    s1.b=99;
    s1.display();
    s2.display();
 
    s1.s.a=5678;
    s1.display();
    s2.display();
    
    
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 03:26 2025
A=123
B=12
A=123
B=12
A=123
B=99
A=123
B=12
A=5678
B=99
A=5678
B=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Tue Oct  7 03:26:17 2025
Done
