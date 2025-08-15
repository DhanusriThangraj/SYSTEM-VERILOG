module shortint_to_int_and_longint;
   shortint shortint_data;
   int int_data;
   longint longint_data;
  initial begin
    shortint_data='b11001001001010;
    
    $display("shortint_data=%0d",$size(shortint_data));
    $display("values of shortint_data= %b",shortint_data);
    
    int_data=int'(shortint_data);
    $display("int_data=%0d",$size(int_data));
    $display("values of int_data= %b",int_data);  
    
    longint_data=longint'(shortint_data);
    $display("longint_data=%0d",$size(longint_data));
    $display("values of longint_data= %b",longint_data);    
  end
endmodule


// output
xcelium> run
shortint_data=16
values of shortint_data= 0011001001001010
int_data=32
values of int_data= 00000000000000000011001001001010
longint_data=64
values of longint_data= 0000000000000000000000000000000000000000000000000011001001001010
xmsim: *W,RNQUIE: Simulation is complete.
