module  logic_to_byte;
  logic logic_data;
  byte  byte_data;
  initial begin
    logic_data='b1100xx11;   //when logic_data='b000xxxx; output will be x  and also logic_data='b000zz; output will be z
    $display("logic_data=%b",logic_data);
    
    byte_data=int'(logic_data);
    $display("byte_data=%b",byte_data);

  end
endmodule

// output
xcelium> run
logic_data=1
byte_data=00000001
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
