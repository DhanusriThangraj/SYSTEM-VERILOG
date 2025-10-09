// Code your testbench here
// or browse Examples
class example;
  rand bit [3:0]a[];
  rand bit [3:0]b[];
  rand byte c; 
  
  constraint c2 {a.size==4;}
  constraint  c1 {foreach (a[i])
    a[i] inside {3,4};}
  constraint c3 {b.size==a.size;}
  constraint c4 {c==1;};
  
endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();

      e1.randomize();
    foreach(e1.a[i])
      $display("A[%0d]=%0d",i,e1.a[i]);
   
    repeat(3)begin
        e1.c4.constraint_mode(0);
     $display("C=%0d",e1.c);
    end
    
     e1.randomize();
  foreach(e1.b[i])
    $display("B[%0d]=%0d",i,e1.b[i]);
   
  end
  
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 04:13 2025
A[0]=3
A[1]=4
A[2]=4
A[3]=3
C=-3
C=-3
C=-3
B[0]=11
B[1]=0
B[2]=10
B[3]=2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Oct  8 04:13:14 2025
Done
