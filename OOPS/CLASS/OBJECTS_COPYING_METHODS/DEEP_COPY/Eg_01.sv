class deep_copy;
  int a=12;
  int b=78;
  function void sample();
    $display("Display the values of a=%0d and b=%0d",a,b);
    endfunction
  
  function void deep(deep_copy copy);
    this.a=copy.a;
    this.b=copy.b;
  endfunction
endclass

module sample;
  deep_copy d1,d2;
  initial begin
    d1=new();
    d2=new();
    d2.deep(d1);
    d1.sample();
    d2.sample();
    d1.a=966;
    d1.b=85;
    d1.sample();
    d2.sample();
    d2.a=11234567;
    d2.b=09876543;
    d2.sample();
  end
endmodule

// output
xcelium> run
Display the values of a=12 and b=78
Display the values of a=12 and b=78
Display the values of a=966 and b=85
Display the values of a=12 and b=78
Display the values of a=11234567 and b=9876543
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
