module static_array;
  bit[3:0]abc=4'b0101;
  
  initial begin 
    foreach (abc[i])begin
      $display("the array elements are [%0d]=[%0d]",i,abc[i]);
    end 
  end
    endmodule

//output
// the array elements are [3]=[0]
// the array elements are [2]=[1]
// the array elements are [1]=[0]
// the array elements are [0]=[1]
