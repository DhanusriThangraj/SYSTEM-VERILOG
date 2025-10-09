class example;
  rand bit [2:0]a;
  rand bit [5:0]b;
  rand bit [3:0]c;
  rand bit [3:0]d;
  constraint c2 {a<5;}
  constraint  c1 { (a==3)->(b==4);
                    solve a before b;}

endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();

    repeat(10)begin
      e1.randomize();
      $display("A=%0d-----B=%0d----C=%0d--------D=%0d",e1.a,e1.b,e1.c,e1.d);
end
   
  end
endmodule

ontains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 03:32 2025
A=2-----B=50----C=9--------D=12
A=3-----B=4----C=11--------D=0
A=0-----B=1----C=10--------D=6
A=1-----B=14----C=7--------D=2
A=2-----B=8----C=0--------D=12
A=3-----B=4----C=3--------D=6
A=0-----B=36----C=10--------D=12
A=2-----B=55----C=3--------D=14
A=1-----B=7----C=0--------D=3
A=4-----B=21----C=9--------D=7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Wed Oct  8 03:32:58 2025
Done
