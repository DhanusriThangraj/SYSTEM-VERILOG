module queue_array;
  string state[$];
  initial begin
    $display("initial values of the state %0d",state.size());
    
    state={"tamilnadu","kerala","ordisa","karanaka","andhra","madhyaparadesh","gujarat"};
    $display("the elements are %p",state);
    
    state.insert(1,"surat");
    $display("after inserting surat %p",state);
    
    state.push_front("telugana");
    $display("atfer pushing %p",state);
    
    state.push_back("namma ooru");
    $display("after pushimg back %p ",state);
    
    state.pop_back();
    $display("after pop in back %p",state);
    
    state.pop_front();
    $display("after pop in front %p",state);
    
    $display("the size of the array %0d",state.size());
    state.delete();
    $display("after deleting %p",state); 
    $display("the size of the array,after deleting %0d",state.size());
        
  end 
endmodule

// output
xcelium> run
initial values of the state 0
the elements are '{"tamilnadu", "kerala", "ordisa", "karanaka", "andhra", "madhyaparadesh", "gujarat"}
after inserting surat '{"tamilnadu", "surat", "kerala", "ordisa", "karanaka", "andhra", "madhyaparadesh", "gujarat"}
atfer pushing '{"telugana", "tamilnadu", "surat", "kerala", "ordisa", "karanaka", "andhra", "madhyaparadesh", "gujarat"}
after pushimg back '{"telugana", "tamilnadu", "surat", "kerala", "ordisa", "karanaka", "andhra", "madhyaparadesh", "gujarat", "namma ooru"} 
after pop in back '{"telugana", "tamilnadu", "surat", "kerala", "ordisa", "karanaka", "andhra", "madhyaparadesh", "gujarat"}
after pop in front '{"tamilnadu", "surat", "kerala", "ordisa", "karanaka", "andhra", "madhyaparadesh", "gujarat"}
the size of the array 8
after deleting '{}
the size of the array,after deleting 0
xmsim: *W,RNQUIE: Simulation is complete.


  
