virtual class parent;
 
 pure virtual function void display();

   endclass

class child1 extends parent;
  string a="apple";
  function void display();
    $display("a=%s",a);
  endfunction
  
endclass
  
   class child2 extends parent;
  string a="orange";
  function void display();
    $display("a=%s",a);
  endfunction
  
endclass
  
module sample;
      parent p1;
      child1 c_1;
  
      child2 c_2;
    initial begin
      c_1=new();
      c_2=new();
      p1=c_1;
      p1.display();
      c_1.display();
      p1=c_2;
      p1.display();
      c_2.display();
    end
endmodule

   //output
   Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 00:49 2025
a=apple
a=apple
a=orange
a=orange
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue Oct  7 00:49:57 2025
Done
