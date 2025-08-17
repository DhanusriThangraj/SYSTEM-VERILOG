class eg;
  byte a;
  int b;
endclass

module example;
  eg e=new();
  initial begin
    repeat(4)begin
      void'(std::randomize(e.a));
      void'(std::randomize(e.b));
      $display("A=%0b  B=%0d",e.a,e.b);
    end
  end
endmodule

// output
A=1101110   B=-2118898666
A=11100111  B=1809026957
A=100101    B=-50041587
A=11010100  B=649020923
