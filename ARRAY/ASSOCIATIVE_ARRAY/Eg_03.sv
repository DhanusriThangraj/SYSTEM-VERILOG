module associative_array;
  int flowers[string];
  
  initial begin
    $display("the initial value is ",flowers.size);
    
    flowers='{"rose":12,"jasmine":10,"lily":6,"tulip":46,"dallya":12};
    $display("print the elements %p",flowers);
    
    $display("the values of rose %0d",flowers["rose"]);
    $display("the values of jasmine %0d",flowers["jasmine"]);
    $display("the values of tulip %0d",flowers["tulip"]);
    $display("the values of dallya %0d",flowers["dallya"]);    
  end
endmodule

// output
xcelium> run
the initial value is           0
print the elements '{"dallya":12, "jasmine":10, "lily":6, "rose":12, "tulip":46}
the values of rose 12
the values of jasmine 10
the values of tulip 46
the values of dallya 12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
