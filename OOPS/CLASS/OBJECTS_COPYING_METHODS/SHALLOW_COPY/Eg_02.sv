
class example;
  string a="DHANUSRI";
  int b=123423;
  function void display();
    $display("Display the values a=%0s and b=%0d",a,b);
    endfunction
endclass

module sample;
  example d1,d2;
  initial begin
    d1 = new();
    d2=new d1;
    d1.display();
    d2.display();
    $display("//////////////////////////////////////////");
    d2.a="DEVAKI";
    d2.b=987;
    d1.display();
    d2.display();  
  end
endmodule 

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 12:19 2025
Display the values a=DHANUSRI and b=123423
Display the values a=DHANUSRI and b=123423
//////////////////////////////////////////
Display the values a=DHANUSRI and b=123423
Display the values a=DEVAKI and b=987
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Thu Oct  2 12:19:29 2025
Done
