module example;
  integer data;
  bit [3:0]addr;
  byte number;
  initial begin
    repeat(5)begin
      data=$random;
      addr=$unsigned($random);
      number=$urandom;
      $display("Data=%0d      Addr=%0b       number=%0b",data,addr,number);
    end
  end
endmodule

// output
xcelium> run
Data=303379748         Addr=1        number=10010010
Data=-2071669239       Addr=11       number=1101001
Data=112818957         Addr=1101     number=1001000
Data=-1295874971       Addr=10       number=11000000
Data=15983361          Addr=1101     number=11010000
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
