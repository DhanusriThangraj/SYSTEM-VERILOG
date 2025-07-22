module static_array;
  bit[3:0]abc=4'b0101;
  
  initial begin 
    foreach (abc[i])begin
      $display(" Elements of abc [%0d]=[%0d]",i,abc[i]);
    end 
  end
    endmodule
//output
 Elements of abc [3]=[0]
 Elements of abc [2]=[1]
 Elements of abc [1]=[0]
 Elements of abc [0]=[1]
