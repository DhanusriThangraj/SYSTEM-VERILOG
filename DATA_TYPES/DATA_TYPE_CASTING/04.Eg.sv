module  logic_to_byte;
  logic logic_data;
  byte  byte_data;
  initial begin
    logic_data='bzz1100;  
    $display("logic_data=%b",logic_data);
    
    byte_data=logic'(logic_data);
    $display("byte_data=%b",byte_data);

  end
endmodule
// output
xcelium> run
logic_data=0
byte_data=00000000
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

