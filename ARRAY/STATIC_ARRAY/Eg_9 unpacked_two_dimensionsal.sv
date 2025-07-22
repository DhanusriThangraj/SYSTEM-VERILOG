module static_array;
  int abc[2][3];
  initial begin 
    foreach(abc[i,j]) begin
      abc[i][j]=$urandom_range(10,50);
      $display("The elements are [%0d][%0d]=[%0d]",i,j,abc[i][j]);
    end
    $display("display all the elements=%p",abc);
  end
endmodule

// Output
xcelium> run
The elements are [0][0]=[21]
The elements are [0][1]=[28]
The elements are [0][2]=[29]
The elements are [1][0]=[18]
The elements are [1][1]=[30]
The elements are [1][2]=[50]
display all the elements='{'{21, 28, 29}, '{18, 30, 50}}
xmsim: *W,RNQUIE: Simulation is complete.
