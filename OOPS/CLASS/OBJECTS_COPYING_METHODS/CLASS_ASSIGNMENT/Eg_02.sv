class example;
  int x=12;
  int y=16;
  function void sum();
    int sum;
    sum=x+y;
    $display("Display the OUtput of the sum=%0d",sum);
    endfunction
     endclass
module example1;
    example eg1,eg2;
  initial begin
  eg1=new();
  eg1.sum();
    eg1.x=14;
    eg1.y=35;
    eg2=eg1;
    eg1.sum();
    eg2.sum();
  end
endmodule

// output
xcelium> run
Display the OUtput of the sum=28
Display the OUtput of the sum=49
Display the OUtput of the sum=49
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
