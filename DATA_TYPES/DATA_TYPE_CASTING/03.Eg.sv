module real_to_int;
  real real_data;
  int int_data;
  initial begin
    real_data=4.78;
    $display("real_data=%f",real_data);
    
    int_data=int'(real_data);
    $display("int_data=%b",int_data);
    $display("int_data=%0d",int_data);

  end
endmodule

// output
xcelium> run
real_data=4.780000
int_data=00000000000000000000000000000101
int_data=5
xmsim: *W,RNQUIE: Simulation is complete.
