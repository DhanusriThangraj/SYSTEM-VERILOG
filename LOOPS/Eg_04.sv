module example;
  int a=10;
  initial begin
    while(a>13) begin
      $display("A=%0d",a);
    end
    $display("loop is existed");
  end
endmodule

// output
xcelium> run
loop is existed
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
