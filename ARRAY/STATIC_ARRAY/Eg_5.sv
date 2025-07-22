module static_array;
  logic [7:0] xyz =8'b0101010100111;
  
  initial begin 
    foreach (xyz[i]) begin
      $display("Elements in the xyz [%0d]=[%0d]",i,xyz[i]);
    end   
  end
endmodule

//Output
// TOOL:	xrun	23.09-s001: Started on Jul 22, 2025 at 03:15:16 EDT
// xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
//   logic [7:0] xyz =8'b0101010100111;
//                                   |
// xmvlog: *W,INTOVF (testbench.sv,60|34): bit overflow during conversion from text [2.5(IEEE)] (8 bits).
// 	Top level design units:
// 		static_array
// Loading snapshot worklib.static_array:sv .................... Done
// xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
// xcelium> run
// Elements in the xyz [7]=[1]
// Elements in the xyz [6]=[0]
// Elements in the xyz [5]=[1]
// Elements in the xyz [4]=[0]
// Elements in the xyz [3]=[0]
// Elements in the xyz [2]=[1]
// Elements in the xyz [1]=[1]
// Elements in the xyz [0]=[1]
// xmsim: *W,RNQUIE: Simulation is complete.
// xcelium> exit

