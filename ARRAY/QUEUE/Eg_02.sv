
module queue_array;
  int queue[$];
  initial begin
    $display("print initial  all the elements %p",queue);
    
    queue={1,2,3,4,5,6,7,8,9,10,11,12};
    $display("print all the elements %p",queue);   
    $display("size if the elements %0d",queue.size());
    
    queue.insert(11,1);
    $display("after inserting elements %p",queue);
    
    queue.insert(1,120);
    $display("after inserting elements %p",queue);
    
    queue.delete();
    $display("atfer deleting %p",queue);
    
    queue={1,2,3,4,5};
    queue.pop_front();
    $display("after pop %p",queue);
    
    queue.push_front(12);
    $display("after push %p",queue);
    
    queue.pop_back();
    $display("after pop back %p",queue);
    
    queue.push_back(15);
    $display("after push back %p",queue);
    
    queue.shuffle();
    $display("display after suffling elements %p",queue)      
  end
endmodule

// output
xcelium> run
print initial  all the elements '{}
print all the elements '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
size if the elements 12
after inserting elements '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 12}
after inserting elements '{1, 120, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 12}
atfer deleting '{}
after pop '{2, 3, 4, 5}
after push '{12, 2, 3, 4, 5}
after pop back '{12, 2, 3, 4}
after push back '{12, 2, 3, 4, 15}
display after suffling elements '{2, 12, 15, 4, 3}
xmsim: *W,RNQUIE: Simulation is complete.
