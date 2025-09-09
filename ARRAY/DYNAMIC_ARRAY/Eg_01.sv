module dynamic_array;
  integer abc[];
  
  initial begin   
    $display("print the array = %p",abc);
    
    abc = new[7];
    abc='{1,2,3,4,5,6,7};
    foreach(abc[i]) begin
      $display("The elements in the array are [%0d]=[%0d]",i,abc[i]); 
    end  
  end
endmodule

// output
xcelium> run
print the array = '{}
The elements in the array are [0]=[1]
The elements in the array are [1]=[2]
The elements in the array are [2]=[3]
The elements in the array are [3]=[4]
The elements in the array are [4]=[5]
The elements in the array are [5]=[6]
The elements in the array are [6]=[7]
xmsim: *W,RNQUIE: Simulation is complete.
