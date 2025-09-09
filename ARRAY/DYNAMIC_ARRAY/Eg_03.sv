module dynamic_array;
  int da[];
  initial begin
    $display("print the array %p",da);
   
    da=new[5];
    da='{1,2,3,4,5};
    foreach(da[i]) begin
      $display("the array elements are [%0d]=[%0d]",i,da[i]);
    end
    $display ("print the elements %p",da);
    
    $display("display the  values of da [%0d]",da[0]);
    $display("display the  values of da [%0d]",da[1]);
    $display("display the  values of da [%0d]",da[2]);
    $display("display the  values of da [%0d]",da[3]);
    $display("display the  values of da [%0d]",da[4]);
    $display("display the  values of da [%0d]",da[5]);
    $display("display the  values of da [%0d]",da[1024]);
  end 
endmodule


// // output
// xcelium> run
// print the array '{}
// the array elements are [0]=[1]
// the array elements are [1]=[2]
// the array elements are [2]=[3]
// the array elements are [3]=[4]
// the array elements are [4]=[5]
// print the elements '{1, 2, 3, 4, 5}
// display the  values of da [1]
// display the  values of da [2]
// display the  values of da [3]
// display the  values of da [4]
// display the  values of da [5]
// display the  values of da [0]
// display the  values of da [0]
// xmsim: *W,RNQUIE: Simulation is complete.

