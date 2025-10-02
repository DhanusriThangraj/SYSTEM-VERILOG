class sample;
  string a;
  bit [3:0]b;
  
  function new(string a,bit b);
    this.a=a;
    this.b=b;
    endfunction
endclass

class sample1;
  sample s;
  bit [3:0]data;
  string n;
  
  function new();
     data=12;
     n="dhanu";
    s=new("******",3);
  endfunction
  
  function void display();
    $display("DATA=%0d--------N=%0s",data,n);
    $display("A=%0s-----------B=%0d",s.a,s.b);
  endfunction
endclass
module example;
  initial begin
    sample1 s1,s2;
    s1=new();
    s2= new s1;
    s1.display();
    $display("/////////////////////////////");
    
    s2.display(); 
    $display("////////////////////////////");
    
    s1.data=15;
    s1.n="THENU";
    s1.s.a="NAANTHA";
    s1.s.b=7;
    s1.display();
    s2.display(); 
    $display("////////////////////////////");
 
    s1.data=14;
    s1.n="DEVAKI";
    s2.s.a="NEETHA";
    s2.s.b=10;
    s1.display();
    s2.display();
      
  end
endmodule


// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 12:10 2025
DATA=12--------N=dhanu
A=******-----------B=1
/////////////////////////////
DATA=12--------N=dhanu
A=******-----------B=1
////////////////////////////
DATA=15--------N=THENU
A=NAANTHA-----------B=7
DATA=12--------N=dhanu
A=NAANTHA-----------B=7
////////////////////////////
DATA=14--------N=DEVAKI
A=NEETHA-----------B=10
DATA=12--------N=dhanu
A=NEETHA-----------B=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Thu Oct  2 12:10:44 2025
Done
