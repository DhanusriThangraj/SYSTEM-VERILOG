class example;
   int a;
endclass

module sample;
  initial begin
    example s1=new();
    s1.a=134;
    $display("values of a=%0d",s1.a);
  end
endmodule

// output
xcelium> run
values of a=134
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
