class example;
  rand bit [31:0]a;
  constraint c1{foreach (a[i])
            {if(i>=0&&i<=15)
                a[i]=='0;
             else if(i>=16&&i<=31)
               a[i]=='1;}}
endclass
module sample;
  initial begin
    example e;
    e=new();
    repeat(5)begin
      e.randomize();
      $display("A=%0b",e.a);
    end
  end
endmodule

//output
  Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 15:06 2025
A=11111111111111110000000000000000
A=11111111111111110000000000000000
A=11111111111111110000000000000000
A=11111111111111110000000000000000
A=11111111111111110000000000000000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Wed Sep  3 15:06:44 2025
Done              
