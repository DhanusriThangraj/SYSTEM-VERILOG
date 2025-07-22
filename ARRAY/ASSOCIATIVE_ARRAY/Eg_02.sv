module associative_array;
  int abc[string];
  string fruits;
  initial  begin
    $display("display the initial value= %p",abc); 
    $display("display the initial value= %0d",abc.num()); 
    $display("display the initial value= %0d",abc.size());   
    
    abc='{"avacado":10,"grapes":20,"orange":30,"apple":40};
    $display("print the abc %p",abc);
    
    $display("size of the array =%0d",abc.size());
    $display("number of the elements=%0d",abc.num());
    
    abc.first(fruits);
    $display("first element = %0s",fruits);
    
    abc.last(fruits);
    $display("last_elements=%0s",fruits);
      
    fruits="avacado";
    abc.next(fruits);
    $display("next_elements=%0s",fruits);
    
    fruits="avacado";
    abc.prev(fruits);
    $display("previous_elements=%0s",fruits);
  end
endmodule

// output
xcelium> run
display the initial value= '{}
display the initial value= 0
display the initial value= 0
print the abc '{"apple":40, "avacado":10, "grapes":20, "orange":30}
size of the array =4
number of the elements=4
first element = apple
last_elements=orange
next_elements=grapes
previous_elements=apple
xmsim: *W,RNQUIE: Simulation is complete.


  
