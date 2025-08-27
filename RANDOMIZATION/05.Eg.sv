class sample;
  rand integer data;
  randc bit[3:0]parity;
endclass
module example;
  sample s1;
  initial begin
    s1=new();
    repeat (5)begin
      s1.randomize();
      $display("Data=%0d Parity=%0d",s1.data,s1.parity);
    end
  end
endmodule


// output
xcelium> run
Data=551838007 Parity=14
Data=-718099904 Parity=2
Data=1911723440 Parity=1
Data=-1742888754 Parity=7
Data=1733324122 Parity=12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
