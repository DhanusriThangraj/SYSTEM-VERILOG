module array_reduction_method;
  int array[];
  int num;
  initial begin
    array = new [20];
    array={1,2,3,4,5,6,7,8,9,10};
    $display("size of the array %0d",array.size());
         
    $display("sum of the array = [%0d]",array.sum());
    
    $display("product of the array =[%0d]",array.product());
    
    $display("and operation of the array =[%0d]",array.and());
    
    $display("or operation of the array  =[%0d]",array.or());
    
    $display("Xor operation of the array =[%0d]",array.xor());
          
  end
endmodule

// output
xcelium> run
size of the array 10
sum of the array = [55]
product of the array =[3628800]
and operation of the array =[0]
or operation of the array  =[15]
Xor operation of the array =[11]
xmsim: *W,RNQUIE: Simulation is complete.
