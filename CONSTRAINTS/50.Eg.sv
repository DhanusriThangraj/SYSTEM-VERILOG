
class example;
  rand bit a;
  rand bit [3:0]b;
  constraint c1 {if(a==1)
                    b inside {[1:10]};}
endclass
module sample;
  initial begin
    example e1;
    e1=new();
    repeat(20)begin
      e1.randomize() with {a==1;};
      $display("A=%0b B=%0d",e1.a,e1.b);
    end
  end 
endmodule
//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 06:43 2025
A=1 B=3
A=1 B=5
A=1 B=4
A=1 B=4
A=1 B=2
A=1 B=5
A=1 B=1
A=1 B=3
A=1 B=4
A=1 B=9
A=1 B=10
A=1 B=2
A=1 B=3
A=1 B=9
A=1 B=6
A=1 B=4
A=1 B=6
A=1 B=4
A=1 B=8
A=1 B=4
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Thu Sep  4 06:43:40 2025
Done



class example;
  rand bit a;
  rand bit [3:0]b;
  constraint c1 {if(a==1)
                    b inside {[1:10]};}
endclass
module sample;
  initial begin
    example e1;
    e1=new();
    repeat(20)begin
      e1.randomize();
      $display("A=%0b B=%0d",e1.a,e1.b);
    end
  end 
endmodule


//output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 06:45 2025
A=1 B=5
A=0 B=3
A=1 B=1
A=0 B=1
A=0 B=2
A=0 B=11
A=0 B=4
A=0 B=14
A=0 B=1
A=1 B=5
A=1 B=10
A=0 B=2
A=0 B=14
A=1 B=7
A=0 B=5
A=0 B=1
A=0 B=5
A=0 B=9
A=1 B=3
A=0 B=9
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Thu Sep  4 06:45:14 2025
Done
