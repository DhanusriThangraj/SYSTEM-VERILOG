class example;
   local int a;
endclass

module sample;
  initial begin
    example s1=new();
    s1.a=134;
    $display("values of a=%0d",s1.a);
  end
endmodule

// output
Error-[SV-ICVA-L] Illegal class variable access
