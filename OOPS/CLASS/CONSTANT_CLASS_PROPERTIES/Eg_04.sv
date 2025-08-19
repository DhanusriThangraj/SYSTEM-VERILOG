 //if assigned in outside of the class constructor
  class sample;
 const int a;
  string b;
  function new();
    a=12;
    b="instance class";
  endfunction
  function void example();  
    a=13;  //Instance constant class properties cannot be assigned outside of a constructor.
    $display("Display the values of a=%0d and b=%0s",a,b);
  endfunction 
endclass
  module example1;
    sample s1;
    initial begin
      s1=new();
      s1.example();
      s1.b="In instance class,the values cannot assigned firstly";
      s1.example();  
    end
  endmodule

  // output
  TOOL:	xrun	23.09-s001: Started on Jul 27, 2025 at 06:20:56 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
    a=13;
    |
xmvlog: *E,CLSCON (testbench.sv,33|4): Instance constant class properties cannot be assigned outside of a constructor.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Jul 27, 2025 at 06:20:56 EDT  (total: 00:00:00)
  
