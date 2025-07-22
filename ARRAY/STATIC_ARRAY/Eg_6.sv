module static_array;
  bit [2:0][3:0]xyz=12'hdfe;
  
  initial begin 
    foreach (xyz[i,j]) begin
      $display("The elements in two dimensional [%0d][%0d]=[%0d]",i,j,xyz[i][j]);
    end
    $display("display the all elements =%p",xyz);
  end
endmodule

# The elements in two dimensional [2][3]=[1]
# The elements in two dimensional [2][2]=[1]
# The elements in two dimensional [2][1]=[0]
# The elements in two dimensional [2][0]=[1]
# The elements in two dimensional [1][3]=[1]
# The elements in two dimensional [1][2]=[1]
# The elements in two dimensional [1][1]=[1]
# The elements in two dimensional [1][0]=[1]
# The elements in two dimensional [0][3]=[1]
# The elements in two dimensional [0][2]=[1]
# The elements in two dimensional [0][1]=[1]
# The elements in two dimensional [0][0]=[0]
# display the all elements ='{13, 15, 14}
