module shallow;
  sample s1,s2;
  initial begin
    s1=new();
    s2=new s1;
    
    $display("a=%s,b=%0d",s1.a,s1.b);
    $display("a=%s,b=%0d",s2.a,s2.b);
    $display("-------------------");

    s1.a="werty";
    s1.b=2;
    $display("a=%s,b=%0d",s1.a,s1.b);
    $display("a=%s,b=%0d",s2.a,s2.b);
        $display("-------------------");

    s2.a="----";
    s2.b=1;
     $display("a=%s,b=%0d",s1.a,s1.b);
    $display("a=%s,b=%0d",s2.a,s2.b);
         $display("-------------------");    
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 11:43 2025
a=apple,b=3
a=apple,b=3
-------------------
a=werty,b=2
a=apple,b=3
-------------------
a=werty,b=2
a=----,b=1
-------------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Thu Oct  2 11:43:54 2025
