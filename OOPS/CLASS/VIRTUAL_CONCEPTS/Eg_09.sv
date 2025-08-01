virtual class sample;
  int i;
  pure virtual function void display(int a);
  endfunction  //Its gives Error   //no need of use endfunction
endclass
    class sample_1 extends sample;
      function void display(int a);
        i=-a;
        $display("Display the values of i=%0d",i);
        endfunction      
    endclass
    
    module example;
      initial begin
        sample_1 s1=new();
        s1.display(-5);
      end
    endmodule


// output
TOOL:	xrun	23.09-s001: Started on Aug 01, 2025 at 01:01:04 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
  endfunction  //Its gives Error 
            |
xmvlog: *E,EXPENC (testbench.sv,295|12): Expecting the keyword 'endclass'.
    class sample_1 extends sample;
                                |
xmvlog: *E,SVNOTY (testbench.sv,297|32): Syntactically this identifier appears to begin a datatype but it does not refer to a visible datatype in the current scope.
        sample_1 s1=new();
               |
xmvlog: *E,SVNOTY (testbench.sv,306|15): Syntactically this identifier appears to begin a datatype but it does not refer to a visible datatype in the current scope.
xmvlog: *W,NOTOPL: no top-level unit found, must have recursive instances.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Aug 01, 2025 at 01:01:04 EDT  (total: 00:00:00)
