class example;
  int a=10;
  int b=13;
  function void display();
    $display("Display the values of a=%0d and b=%0d",a,b);
  endfunction
endclass

module sample;
  example eg1,eg2;
  initial begin
    eg1=new();
    eg2= new eg1;
    eg1.display();
    eg2.display();
    $display("////////////////////////////////////////");
    eg1.a=145;
    eg1.display();
    eg2.display();
    $display("////////////////////////////////////////");
    
    eg2.a=123;
    eg1.display();
    eg2.display();
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 12:15 2025
Display the values of a=10 and b=13
Display the values of a=10 and b=13
////////////////////////////////////////
Display the values of a=145 and b=13
Display the values of a=10 and b=13
////////////////////////////////////////
Display the values of a=145 and b=13
Display the values of a=123 and b=13
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Thu Oct  2 12:15:48 2025
Done



