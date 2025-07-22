
module static_array;
  int arr1[5]='{1,2,3,4,5};
  int arr2 [2:0][3:0];
  
  initial begin
    arr2='{'{1,10,100,1000},'{2,20,200,2000},'{3,30,300,3000}};
    foreach (arr1[i]) begin
      $display("the elements in the array [%0d]=[%0d]",i,arr1[i]);
    end
    
    foreach (arr2[i,j]) begin
      $display("the elements in the array [%0d][%0d]=[%0d]",i,j,arr2[i][j]);
    end
  end
    endmodule

//output
// the elements in the array [0]=[1]
// the elements in the array [1]=[2]
// the elements in the array [2]=[3]
// the elements in the array [3]=[4]
// the elements in the array [4]=[5]
// the elements in the array [2][3]=[1]
// the elements in the array [2][2]=[10]
// the elements in the array [2][1]=[100]
// the elements in the array [2][0]=[1000]
// the elements in the array [1][3]=[2]
// the elements in the array [1][2]=[20]
// the elements in the array [1][1]=[200]
// the elements in the array [1][0]=[2000]
// the elements in the array [0][3]=[3]
// the elements in the array [0][2]=[30]
// the elements in the array [0][1]=[300]
// the elements in the array [0][0]=[3000]
