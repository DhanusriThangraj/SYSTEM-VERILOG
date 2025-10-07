class sam;
  function void display ();
    $display("%0d",a);
  endfunction
    int a=10;
  
  class duplicate;
    int b=99;
    function void display();
      $display("B=%d",b);
    endfunction
  endclass
duplicate d1;

  
endclass
  
  module example;
    sam s1,s2;
    initial begin
      s1=new();
      s2=s1;
      s1.display();
      s2.display();
      s2.a=34567;
      s1.display();
      s2.display();
      s1.d1=new();
            s1.d1.display();
      $display(s1.d1.b);      
      $display(s2.d1.b);
      s1.d1.b = 100;
      $display(s1.d1.b);      
      $display(s2.d1.b);
  
    end
  endmodule

// output

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  7 01:43 2025
10
10
34567
34567
B=         99
         99
         99
        100
        100
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Tue Oct  7 01:43:34 2025
Done
