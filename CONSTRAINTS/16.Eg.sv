class eg;
  rand bit [7:0]d[15];
  constraint c1 {
   foreach(d[i])
   {d[i]%5==0;
   foreach(d[j])
   {if(i>j)
     d[i]>d[j] ;
   }}}
endclass

module sample;
  initial begin
    eg e1=new();
    e1.randomize();
    foreach(e1.d[i])begin
      $display("D[%0d]=[%0d]",i,e1.d[i]);
    end
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 07:58 2025
D[0]=[10]
D[1]=[180]
D[2]=[190]
D[3]=[200]
D[4]=[205]
D[5]=[210]
D[6]=[215]
D[7]=[220]
D[8]=[225]
D[9]=[230]
D[10]=[235]
D[11]=[240]
D[12]=[245]
D[13]=[250]
D[14]=[255]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.890 seconds;       Data structure size:   0.0Mb
Sat Aug 30 07:58:12 2025
Done    
