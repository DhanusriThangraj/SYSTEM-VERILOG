`include "interface.sv"

module and_tb(inter interf);
  initial begin
    $display("Time\tA\tB\t\tOUT");
    $monitor("%0t\t%0b\t%0b\t\t%0b\t",$time,interf.a,interf.b,interf.out);
    interf.a=5'b00110;
    interf.b=5'b11111;
    
    #10;
    interf.a=5'b11110;
    interf.b=5'b10011;
    
    #1;$finish;
  end
endmodule
