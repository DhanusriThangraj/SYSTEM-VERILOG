module eg;
  int a=10;
  initial begin
    do begin
      $display("A=%0d",a);
      a++;
    end
    while(a<8);
  end
endmodule

// output
xcelium> run
A=10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
