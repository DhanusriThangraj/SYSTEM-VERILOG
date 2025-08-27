module sample;
  int data;
  bit [3:0]addr;
  
  initial begin
    repeat(10)begin
      data=$urandom%2;
      addr=$signed($random);
      $display("Data=%0d addr=%0b",data,addr);   
    end
  end
  
  initial begin
    repeat(5)begin
      data=$urandom_range(10,20);
      $display("Data=%0d",data);
    end
  end
endmodule


// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
Data=0 addr=100
Data=1 addr=1
Data=0 addr=1001
Data=0 addr=11
Data=0 addr=1101
Data=0 addr=1101
Data=0 addr=101
Data=1 addr=10
Data=1 addr=1
Data=0 addr=1101
Data=20
Data=13
Data=16
Data=19
Data=14
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
