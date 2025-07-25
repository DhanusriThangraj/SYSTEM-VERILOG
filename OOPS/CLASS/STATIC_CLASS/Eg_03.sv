class example;
  static int a=158;
endclass
  
module exampleeg1;//without object
  initial begin
    $display("Display the values of a=%0d",example::a);
  end
endmodule

// output
xcelium> run
Display the values of a=1
xmsim: *W,RNQUIE: Simulation is complete.
