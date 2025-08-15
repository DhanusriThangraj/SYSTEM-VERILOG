// casting means the conversion of one data type to another datatype.

module integer_to_int;
  integer integer_data;
  int int_data;
  initial begin
    integer_data=18'b11x11x1x11100zz1;
    $display("size of the integer=%d",$size(integer_data));
    $display("display the values of the integer=%b",integer_data);
    
    int_data=int'(integer_data);
    $display("size of the int=%d",$size(int_data));
    $display("After casting int=%b",int_data);
      
  end
endmodule

// output
xcelium> run
size of the integer=         32
display the values of the integer=000000000000000011x11x1x11100zz1
size of the int=         32
After casting int=00000000000000001101101011100001
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
