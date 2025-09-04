class example;
  rand bit a;
  rand bit b;
  constraint c1 {if(a==1)
                  b==0;}
endclass
module sample;
  initial begin
    example e1;
    e1=new();
    repeat(20)begin
      e1.randomize();
      $display("A=%0b B=%0b",e1.a,e1.b);
    end
  end 
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 06:32 2025
A=0 B=0
A=0 B=1
A=0 B=0
A=0 B=1
A=0 B=0
A=0 B=1
A=0 B=0
A=0 B=0
A=0 B=1
A=1 B=0
A=1 B=0
A=0 B=0
A=0 B=0
A=1 B=0
A=0 B=1
A=0 B=1
A=0 B=1
A=0 B=1
A=1 B=0
A=0 B=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Thu Sep  4 06:32:51 2025
Done
