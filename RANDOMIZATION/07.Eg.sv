class example;
  rand integer add;
  rand int   data;
  rand bit[1:0]data_length;
  bit parity;
function void pre_randomize();
  $display("[PRE ] add=%0d data=%0d data_length=%0d parity=%0b", add, data, data_length, parity);
endfunction

function void post_randomize();
  parity = ^data;
  $display("[POST] parity=%0b", parity);
endfunction

endclass

module sample;
  example e;
  initial begin
    e=new();
    repeat(3)begin
      void'(e.randomize());
      $display("[RAND]add=%0d data=%0d data_lenght=%0d parity=%0b",e.add,e.data,e.data_length,e.data);
    
      e.data=7;
      e.data.rand_mode(0);
      $display("[RAND]Data=%0d",e.data);
  end
  end
endmodule


// output
xcelium> run
[PRE ] add=x data=0 data_length=0 parity=0
[POST] parity=1
[RAND]add=2025382997 data=556336591 data_lenght=2 parity=100001001010010000010111001111
[RAND]Data=7
[PRE ] add=2025382997 data=7 data_length=2 parity=1
[POST] parity=1
[RAND]add=1825328614 data=7 data_lenght=3 parity=111
[RAND]Data=7
[PRE ] add=1825328614 data=7 data_length=3 parity=1
[POST] parity=1
[RAND]add=1902060085 data=7 data_lenght=0 parity=111
[RAND]Data=7
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
