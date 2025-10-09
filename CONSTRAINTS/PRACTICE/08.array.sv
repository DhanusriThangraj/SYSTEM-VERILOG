class example;
  rand bit [3:0]a[3:0];
  
 
  constraint  c1 {foreach (a[i])
    a[i]==i*i;}

endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();

      e1.randomize();
    foreach(e1.a[i])
      $display("A[%0d]=%0d",i,e1.a[i]);
   
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 03:50 2025
A[3]=9
A[2]=4
A[1]=1
A[0]=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Wed Oct  8 03:50:19 2025
Done
