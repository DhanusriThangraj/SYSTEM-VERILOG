module array_locator;
  int array[$];
  
  initial begin
    array={1,2,3,4,5,6,7,8,9,10,5,2,3,2,12,4,57,4}; 
    
    $display("size of the array %0d",array.size());
    
    $display("print all the elements %p",array);
    
    $display("display the minimum value %p",array.min());
    
    $display("display the maximum value %p",array.max());
    
    $display("display the unique value %p",array.unique());
    
    $display("display the unique_index %p",array.unique_index());
    
    array=array.find(check) with (check>2);
    $display("find the values %p",array);
    
    array=array.find_index(check) with (check==4);
    $display("display index the output %p",array);
    
    array={1,2,3,4,5,6,7,8,9,10,5,2,3,2,12,4,57,4}; 
    array=array.find_first(check) with (check>4);
    $display("find first values %p",array);
    
    array={1,2,3,4,5,6,7,8,9,10,5,2,3,2,12,4,57,4}; 
    array=array.find_first_index(check) with (check>4);
    $display("find first values %p",array);
    
    array={1,2,3,4,5,6,7,8,9,10,5,2,3,2,12,4,57,4}; 
    array=array.find_last(check) with (check<8);
    $display("find last values %p",array);
    
    array={1,2,3,4,5,6,7,8,9,10,5,2,3,2,12,4,57,4}; 
    array=array.find_last_index(check) with (check<8);
    $display("find last values %p",array);        
  end
endmodule
// output
xcelium> run
size of the array 18
print all the elements '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 5, 2, 3, 2, 12, 4, 57, 4}
display the minimum value '{1}
display the maximum value '{57}
display the unique value '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 57}
display the unique_index '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 14, 16}
find the values '{3, 4, 5, 6, 7, 8, 9, 10, 5, 3, 12, 4, 57, 4}
display index the output '{1, 11, 13}
find first values '{5}
find first values '{4}
find last values '{4}
find last values '{17}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit





