class example;
  rand int a[5][3]; 
  constraint c1 { 
    foreach(a[i,j])
    {a[i][j]==i*j};
  }
endclass

module sample;
  initial begin
    example e1=new();
    e1.randomize();
    foreach(e1.a[i,j])begin
      $display("a[%0d][%0d]=[%0d]",i,j,e1.a[i][j]);
    end
  end
endmodule


// output
a[0][0]=[0]
a[0][1]=[0]
a[0][2]=[0]
a[1][0]=[0]
a[1][1]=[1]
a[1][2]=[2]
a[2][0]=[0]
a[2][1]=[2]
a[2][2]=[4]
a[3][0]=[0]
a[3][1]=[3]
a[3][2]=[6]
a[4][0]=[0]
a[4][1]=[4]
a[4][2]=[8]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Sat Aug 30 06:40:17 2025
Done
