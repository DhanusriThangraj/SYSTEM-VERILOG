class data_frame;
  rand int arr[10];
  constraint c1 {foreach (arr[i])
  {arr[i]==i;} }
endclass
    
module sample;
  data_frame d1;
  initial begin
    d1=new();
    d1.randomize();
    foreach(d1.arr[i])begin
      $display("arr[%0d]=[%0d]",i,d1.arr[i]);
    end
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
arr[0]=[0]
arr[1]=[1]
arr[2]=[2]
arr[3]=[3]
arr[4]=[4]
arr[5]=[5]
arr[6]=[6]
arr[7]=[7]
arr[8]=[8]
arr[9]=[9]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit


                 
                 
