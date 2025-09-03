class example;//generate prime numbers
  randc int a;
  constraint c {a inside {[1:101]};}
  constraint c1 {a > 1;
                 if (a==2)
                   a==2;
                else 
                  a%2!=0;
                 if (a==3)
                  a==3;
                else
                 a%3!=0;
                 if (a==5)
                  a==5;
                else
                a%5!=0;
                 if (a==7)
                   a==7;
                else
                 a%7!=0;}  
endclass
module sample;
  initial begin
    example e;
    e=new();
    repeat(26)begin
      e.randomize();
      $display("A=%0d",e.a);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  3 14:54 2025
A=31
A=67
A=23
A=71
A=79
A=89
A=101
A=19
A=29
A=17
A=5
A=11
A=61
A=2
A=83
A=13
A=47
A=53
A=3
A=97
A=41
A=73
A=37
A=43
A=7
A=59
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Sep  3 14:54:09 2025
Done
