class example;
  const int x=1;
   string y;
  function new();
    y="global instances"; 
  endfunction
  function void example1();
    $display ("the values of a=%0d and y=%0s",x,y); 
  endfunction
endclass 

module sample;
  example eg1;
  initial begin
    eg1=new();
  eg1.example1();
    eg1.y="in global instances , the constant values are firstly assigned and it can be override in class and not overide in the module";
    eg1.example1();
  end
endmodule


// output
xcelium> run
the values of a=1 and y=global instances
the values of a=1 and y=in global instances , the constant values are firstly assigned and it can be override in class and not overide in the module
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

  // if the constant can be override in the module
  // output is
  TOOL:	xrun	23.09-s001: Started on Jul 27, 2025 at 06:01:59 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
    eg1.x=23;
        |
xmvlog: *E,CLSGCO (testbench.sv,20|8): Global constant class properties cannot be assigned outside of an initialization.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Jul 27, 2025 at 06:01:59 EDT  (total: 00:00:00)
