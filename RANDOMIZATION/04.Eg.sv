module example;
  rand integer data;
  randc bit [3:0]parity;
  initial begin
    repeat (5)begin
      $display("Data=%0d Parity=%0d",data,parity);
    end
  end
endmodule

// output
OOL:	xrun	23.09-s001: Started on Aug 17, 2025 at 07:46:57 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
  rand integer data;
     |
xmvlog: *E,BADPFW (testbench.sv,42|5): The modifier 'rand' is only legal within a class declaration.
  randc bit [3:0]parity;
      |
xmvlog: *E,BADPFW (testbench.sv,43|6): The modifier 'randc' is only legal within a class declaration.
xmvlog: *W,NOTOPL: no top-level unit found, must have recursive instances.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Aug 17, 2025 at 07:46:57 EDT  (total: 00:00:00)
Exit code expected: 0, received: 1
