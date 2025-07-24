class example;
  int a;
  int b;
  function void sample;
    $display("Class Assignment of a=%0d and b=%0d",a,b);
  endfunction
endclass

module example;
  example eg1=new();
  example eg2;
  initial begin
    eg1.a=45;
    eg1.b=12;
    eg1.sample;
    
    eg2=eg1;
    eg2.a=12;
    eg2.b=96;
    eg1.sample;
    eg2.sample;
  end
endmodule

// output
xcelium> run
Class Assignment of a=45 and b=12
Class Assignment of a=12 and b=96
Class Assignment of a=12 and b=96
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
