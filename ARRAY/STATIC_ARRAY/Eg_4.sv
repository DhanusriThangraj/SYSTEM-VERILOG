module static_array;
  logic [15:0] pqr=16'habcf;
  initial begin
    foreach (pqr[i]) begin
      $display("elements of pqr [%0d]=[%0d]",i,pqr[i]);
    end
  end
endmodule



// output
// elements of pqr [15]=[1]
// elements of pqr [14]=[0]
// elements of pqr [13]=[1]
// elements of pqr [12]=[0]
// elements of pqr [11]=[1]
// elements of pqr [10]=[0]
// elements of pqr [9]=[1]
// elements of pqr [8]=[1]
// elements of pqr [7]=[1]
// elements of pqr [6]=[1]
// elements of pqr [5]=[0]
// elements of pqr [4]=[0]
// elements of pqr [3]=[1]
// elements of pqr [2]=[1]
// elements of pqr [1]=[1]
// elements of pqr [0]=[1]
