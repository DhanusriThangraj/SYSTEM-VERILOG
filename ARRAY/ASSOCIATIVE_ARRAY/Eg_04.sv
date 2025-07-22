module assiociative_array;
  bit [7:0]array[int];
  int key;
  initial begin
    $display("initail value ",array.size());
    
    array ='{12:9,1:8,14:45,25:67,34:90,56:98,35:6,87:1};
    $display("print the elements %p",array);
    
    array.first(key);
    $display("first elements %0d",key);
    
    array.last(key);
    $display("last element %0d",key);
    
    array.prev(key);
    $display("previous element %0d",key);
    
    array.delete(1);
    $display("after deleting %p",array);
    
    key=14;
    array.prev(key);
    $display("previous element %0d",key);    
    if (array.exists(35)) 
      $display("exists");
    else 
      $display("not exists");
    array.delete();
    $display("after deleting all elements %p",array);    
  end
    endmodule

// output
xcelium> run
initail value           0
print the elements '{1:'h8, 12:'h9, 14:'h2d, 25:'h43, 34:'h5a, 35:'h6, 56:'h62, 87:'h1}
first elements 1
last element 87
previous element 56
after deleting '{12:'h9, 14:'h2d, 25:'h43, 34:'h5a, 35:'h6, 56:'h62, 87:'h1}
previous element 12
exists
after deleting all elements '{}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
