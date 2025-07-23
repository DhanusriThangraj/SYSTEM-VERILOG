
module array_ordering;
  int array[$];
  initial begin
    array={1,23,1,1,83,39,0,1,33,36,8,93,16,12,35};
    $display("initial values = %0d",array.size());
    
    array.reverse();
    $display("reverse the array %p",array);
    
    array.sort();
    $display("after sorting %p",array);
    
    array.rsort();
    $display("after rsorting %p",array);
    
    array.shuffle();
    $display("after suffling the array elements %p",array);
    
  end
endmodule

// output
xcelium> run
initial values = 15
reverse the array '{35, 12, 16, 93, 8, 36, 33, 1, 0, 39, 83, 1, 1, 23, 1}
after sorting '{0, 1, 1, 1, 1, 8, 12, 16, 23, 33, 35, 36, 39, 83, 93}
after rsorting '{93, 83, 39, 36, 35, 33, 23, 16, 12, 8, 1, 1, 1, 1, 0}
after suffling the array elements '{23, 83, 1, 39, 1, 93, 33, 1, 1, 8, 12, 35, 36, 0, 16}
xmsim: *W,RNQUIE: Simulation is complete.
