module  bit_to_byte;
  logic bit_data;
  byte  byte_data;
  initial begin
    bit_data='b0000zz1;
    $display("bit_data=%b",bit_data);
    
    byte_data=byte'(bit_data);
    $display("byte_data=%b",byte_data);

  end
endmodule

// output
xcelium> run
bit_data=1
byte_data=00000001
xmsim: *W,RNQUIE: Simulation is complete.
