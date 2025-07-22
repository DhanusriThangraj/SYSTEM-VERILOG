module associative_array;
  int bikes[string];
  string brand;
  initial begin
    $display("initial value %p",bikes);
    
    bikes='{"royal_enfield":0,"duke":12,"splender":14,"pulsar":67,"tvs":5};
    $display("the elements are %p",bikes);
    
    bikes.first(brand);
    $display("the first element is %0s",brand);
    
     bikes.last(brand);
    $display("the last element is %0s",brand);
    
     bikes.prev(brand);
    $display("the previous element is %0s",brand);
    
     bikes.next(brand);
    $display("the next element is %0s",brand);
    
    brand="pulsar";
    bikes.next(brand);
    $display ("the pulsars, next element is %s",brand); 
    
    if(bikes.exists("bikess"))
      $display("the bikess is exit");
    else 
      $display("the bikess is not exist");
    
    bikes.delete("tvs");
    $display("after deleting tvs %p",bikes);
    
    bikes.delete();
    $display("after deleting %p",bikes);    
  end
endmodule

// output
xcelium> run
initial value '{}
the elements are '{"duke":12, "pulsar":67, "royal_enfield":0, "splender":14, "tvs":5}
the first element is duke
the last element is tvs
the previous element is splender
the next element is tvs
the pulsars, next element is royal_enfield
the bikess is not exist
after deleting tvs '{"duke":12, "pulsar":67, "royal_enfield":0, "splender":14}
after deleting '{}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit


