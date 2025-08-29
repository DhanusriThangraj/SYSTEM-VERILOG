class sample;
  rand integer data;
  randc bit[3:0]parity;
endclass
module example;
  sample s1;
  initial begin
    s1=new();
    repeat (5)begin
      s1.data.rand_mode(0);
      s1.randomize();
      $display("Data=%0d Parity=%0d",s1.data,s1.parity);
      
    end
    repeat(2)begin
       s1.data.rand_mode(1);
       s1.randomize();
       $display("DATA=%0d",s1.data);
    end
  end
endmodule


// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
Data=x Parity=7
Data=x Parity=2
Data=x Parity=14
Data=x Parity=4
Data=x Parity=9
DATA=-120686266
DATA=1583508239
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
