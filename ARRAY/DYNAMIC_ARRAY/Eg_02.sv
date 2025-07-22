module dyanamic_array;
  int xyz[];
  initial begin 
    $display("print the array %p",xyz);
    
    xyz=new[10];
    xyz='{21,22,23,24,25,26,27,28,29,30};
    
    foreach(xyz[i])begin 
      $display("DISPLAY ALL THE ELEMENTS [%0d]=[%0d]",i,xyz[i]);
    end
    $display ("size of the array=[%0d]",xyz.size);
    xyz.delete();
    $display ("After delete,size of the array=[%0d]",xyz.size);
  end
endmodule

// output
print the array '{}
DISPLAY ALL THE ELEMENTS [0]=[21]
DISPLAY ALL THE ELEMENTS [1]=[22]
DISPLAY ALL THE ELEMENTS [2]=[23]
DISPLAY ALL THE ELEMENTS [3]=[24]
DISPLAY ALL THE ELEMENTS [4]=[25]
DISPLAY ALL THE ELEMENTS [5]=[26]
DISPLAY ALL THE ELEMENTS [6]=[27]
DISPLAY ALL THE ELEMENTS [7]=[28]
DISPLAY ALL THE ELEMENTS [8]=[29]
DISPLAY ALL THE ELEMENTS [9]=[30]
size of the array=[10]
After delete,size of the array=[0]
xmsim: *W,RNQUIE: Simulation is complete.
