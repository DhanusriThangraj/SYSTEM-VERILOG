class child1 ;
 static  string a;
 static function void display();
   $display("a=%s",a);
  endfunction
  
endclass

module sample;
  
      child1 c_1,c_2,c_3;
  
    initial begin
//       c_1=new();

      c_1.a="grapes";
//       c_2=new();
//       c_3=new();
      c_1.display();
      c_2.display();
      c_3.display();

    end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 01:06 2025
a=grapes
a=grapes
a=grapes
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Tue Oct  7 01:06:28 2025
Done
