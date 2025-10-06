
module queue;
  int a[$];
  int b[$]='{12,43,54,22,45};
  initial begin
    a=b;
    $display("%p",a);
    
    a={b,1000,1,2,3,4,5,5};
        $display("%p",a);
    
    b={123,a};
    $display("%p",b); 
    
    b[3]=1234;
    $display("%p",b);
    
    a[0]=00100;
    $display("%p",a);
    
    a=b[1:5];
    $display("%p",a);
  
    a.insert(1,129);
     $display("%p",a);
    
    a={};
     $display("%p",a);
    
    a.insert(0,129);
     $display("%p",a);
    
    a.push_front(12345);
    $display("%p",a);
    
    a.push_front(1097);
    $display("%p",a);
  
    a.pop_front;
    $display("%p",a);
    
    a.pop_back;
    $display("%p",a);

  end
endmodule


// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  6 01:03 2025
'{12, 43, 54, 22, 45} 
'{12, 43, 54, 22, 45, 1000, 1, 2, 3, 4, 5, 5} 
'{123, 12, 43, 54, 22, 45, 1000, 1, 2, 3, 4, 5, 5} 
'{123, 12, 43, 1234, 22, 45, 1000, 1, 2, 3, 4, 5, 5} 
'{100, 43, 54, 22, 45, 1000, 1, 2, 3, 4, 5, 5} 
'{12, 43, 1234, 22, 45} 
'{12, 129, 43, 1234, 22, 45} 
'{}
'{129} 
'{12345, 129} 
'{1097, 12345, 129} 
'{12345, 129} 
'{12345} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Mon Oct  6 01:03:55 2025
Done
