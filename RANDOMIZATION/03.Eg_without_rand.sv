module example;
  integer data;
  bit [3:0]parity;
  initial begin
    repeat (5)begin
      $display("Data=%0d Parity=%0d",data,parity);
    end
  end
endmodule

// output
xcelium> run
Data=x Parity=0
Data=x Parity=0
Data=x Parity=0
Data=x Parity=0
Data=x Parity=0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
