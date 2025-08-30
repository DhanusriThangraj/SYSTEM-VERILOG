class example;
  randc int data;
  randc bit [7:0]addr;
  randc int sel;
  bit min=25;
  bit max=35;
  constraint c1 {data inside {[1:50]};}
  constraint c2 {addr inside {1,2,3,4,5,6,7,8,9};}
  constraint c3 {sel inside {[1:10],36,[min:max]};}
endclass

module sample;
  initial begin
    example e1;
    e1=new();
    repeat(10)begin
          e1.randomize();
      $display("Data=%0d Addr=%0d Sel=%0d",e1.data,e1.addr,e1.sel);end
  end
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 08:14 2025
Data=17 Addr=9 Sel=10
Data=20 Addr=2 Sel=36
Data=37 Addr=8 Sel=3
Data=39 Addr=3 Sel=9
Data=48 Addr=4 Sel=7
Data=49 Addr=6 Sel=8
Data=33 Addr=7 Sel=2
Data=50 Addr=1 Sel=1
Data=22 Addr=5 Sel=4
Data=12 Addr=9 Sel=6
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Sat Aug 30 08:14:47 2025
Done
