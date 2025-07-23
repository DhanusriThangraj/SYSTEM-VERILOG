module associative_array;
  int array[$];
  initial begin
    array={56,97,45,12,90,37};
    $display("print all the elemenst %p",array);
    
    array.insert(6,166);
    $display("after inserting %p",array);
    
    array.push_front(1332);
    $display("after push_front %p",array);
    
    array.push_back(178);
    $display("after push_back %p",array);
    
    array.pop_front();
    $display("after pop_front %p",array);
    
    array.pop_back();
    $display("after pop_back %p",array);
    
    array.delete();
    $display("after deleting %p",array);
    $display("display size of the array %0d",array.size());
    
  end 
endmodule

// output
xcelium> run
print all the elemenst '{56, 97, 45, 12, 90, 37}
after inserting '{56, 97, 45, 12, 90, 37, 166}
after push_front '{1332, 56, 97, 45, 12, 90, 37, 166}
after push_back '{1332, 56, 97, 45, 12, 90, 37, 166, 178}
after pop_front '{56, 97, 45, 12, 90, 37, 166, 178}
after pop_back '{56, 97, 45, 12, 90, 37, 166}
after deleting '{}
display size of the array 0
xmsim: *W,RNQUIE: Simulation is complete.
