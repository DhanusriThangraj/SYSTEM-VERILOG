// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
class child1 ;
 static  string a;
         string b;
 static function void display();
   $display("a=%s",a);
  endfunction
  
endclass

module sample;
  
      child1 c_1,c_2,c_3;
  
    initial begin
      c_1=new();

      c_1.a="grapes";
      c_2=new();
      c_3=new();
      c_1.display();
      c_2.display();
      c_3.display();

      c_2.a="orange";
      c_2.b="chiko";
      $display("b=%s",c_2.b);

      c_1.display();
      c_2.display();
      c_3.display();


    end
endmodule

// What happens when you call new()?

// Only this:

// A new object is created for non-static members

// Static members are not recreated 


//output

Contains Synopsys proprietary information.
Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Feb  7 08:41 2026
a=grapes
a=grapes
a=grapes
b=chiko
a=orange
a=orange
a=orange
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.530 seconds;       Data structure size:   0.0Mb
Sat Feb  7 08:41:17 2026
Done
