class example;
  static int a=1;
  static function void function_example();
    $display("Display the values of a=%0d",a);
  endfunction
endclass

module example_eg1;
  initial begin
    example::function_example();
  end
endmodule

//output
xcelium> run
Display the values of a=1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
