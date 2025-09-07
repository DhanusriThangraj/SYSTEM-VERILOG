module jk(input j,k,
          input clk,reset,
          output reg q,qbar);
  always @(posedge clk)begin
    if(reset)begin
      q<=0;
    end
    else
      case({j,k})
        2'b00:q<=q;
        2'b01:q<=0;
        2'b10:q<=1;
        2'b11:q<=~q;
      endcase   
  end
  assign qbar=~q;
endmodule
