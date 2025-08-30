
module example;
  int d;
  initial begin
    while(d<21)begin
      d++;
      $display("D=%0d",d); end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 01:40 2025
D=1
D=2
D=3
D=4
D=5
D=6
D=7
D=8
D=9
D=10
D=11
D=12
D=13
D=14
D=15
D=16
D=17
D=18
D=19
D=20
D=21
           V C S   S i m u l a t i o n   R e p o r t 
