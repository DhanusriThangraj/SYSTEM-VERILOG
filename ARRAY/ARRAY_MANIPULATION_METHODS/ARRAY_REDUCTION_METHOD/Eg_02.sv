
module array_reduction_method;
  
  byte array[12:0]={1,2,3,4,5,6,7,8,9,10,11,12,13};
  
 
  initial begin
    $display("sum of the array = [%0b]",array.sum());
    
    $display("product of the array =[%0b]",array.product());
    
    $display("and operation of the array =[%0b]",array.and());
    
    $display("or operation of the array  =[%0b]",array.or());
    
    $display("Xor operation of the array =[%0b]",array.xor());
    
      
  end
endmodule

// output
xcelium> run
sum of the array = [1011011]
product of the array =[0]
and operation of the array =[0]
or operation of the array  =[1111]
Xor operation of the array =[1]
xmsim: *W,RNQUIE: Simulation is complete.
