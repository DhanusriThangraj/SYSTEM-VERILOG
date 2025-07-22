
module static_array;
  byte a[8]='{2,9,5,6,7,8,9,10};
  initial begin
    foreach (a[i]) begin
      $display("The elements in a[%0d]=[%0d]",i,a[i]);
    end
  end
endmodule

// output
// # The elements in a[0]=[2]
// # The elements in a[1]=[9]
// # The elements in a[2]=[5]
// # The elements in a[3]=[6]
// # The elements in a[4]=[7]
// # The elements in a[5]=[8]
// # The elements in a[6]=[9]
// # The elements in a[7]=[10]
