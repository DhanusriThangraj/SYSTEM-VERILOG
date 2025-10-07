class shallow;
  int a;
  
  function void display();
    $display("A=%0d",a);
  endfunction
  
endclass


module example;
  shallow s1,s2;
  initial begin
    s1=new();
    s2=new s1;
    s1.display();
    s2.display();
    
    s1.a=23;
    
    s1.display();
    s2.display();
    
    s2.a=46;
    s1.display();
    s2.display();  
    
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 02:28 2025
A=0
A=0
A=23
A=0
A=23
A=46
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Tue Oct  7 02:28:38 2025
Done
