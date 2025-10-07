class deep;
  int a;
  
  function new(int a);
    this.a = a;
  endfunction
  
endclass

class deep2;
  deep s;
  int b=12;
  
    function new();
      s=new(123);
    endfunction
  
    function void display();
  
         $display("A=%0d",s.a);
         $display("B=%0d",b);

  endfunction
  
  function deep_copy(deep2 sa);
   this.b=sa.b;
   this.s.a=sa.s.a;
 endfunction
    
endclass


module example;
  deep2 s1,s2;
  initial begin
    s1=new();
    s2=new();
    s2.deep_copy(s1);
    
    s1.display();
    s2.display();
    
    s1.s.a=76;
    s1.display();
    s2.display();
    $display(".........................................................................");
    s2.s.a=4567;
    s1.display();
    s2.display();
    
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 05:02 2025
A=123
B=12
A=123
B=12
A=76
B=12
A=123
B=12
.........................................................................
A=76
B=12
A=4567
B=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Tue Oct  7 05:02:17 2025
Done

