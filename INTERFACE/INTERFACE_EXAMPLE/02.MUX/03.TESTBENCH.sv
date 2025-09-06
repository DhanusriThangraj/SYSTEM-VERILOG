`include "interface.sv"

module mux_tb(inter interf);
  initial begin
    $display("Time\tA\tsel\tY\t");
    $monitor("%0t\t%0b\t%0b\t%0b\t",$time,interf.a,interf.sel,interf.y);
    
    #1;
    interf.sel=2'b00; interf.a=10; //1010
    #12;
    interf.sel=2'b01;  
    #15;interf.sel=2'b10;
    #20;interf.sel=2'b11;
    
    #1;$finish;
    
  end
endmodule
