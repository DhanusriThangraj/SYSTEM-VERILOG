module and_gate #(parameter N=5)(
  input wire [N-1:0]a,
  input wire [N-1:0]b,
  output wire [N-1:0]out);
  
   assign out=a&b;
  
endmodule
