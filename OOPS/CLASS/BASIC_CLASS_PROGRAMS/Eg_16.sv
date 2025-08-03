class example;
  static int a=10;
  static function void example1(); 
    $display("Display the values of a=%0d",a);
  endfunction
endclass

module example_2;
//   example eg1;
  initial begin
    example::example1();
  end
endmodule

// output
xcelium> run
Display the values of a=10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
