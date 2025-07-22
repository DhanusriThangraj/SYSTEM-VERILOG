module associative_array;
  int abc[*];
  string pqr [string];
  
  initial begin 
    abc ='{1:20,25:22,38:66}; 
    $display ("print the array of abc =%p",abc);
   
    
    pqr='{"fruits":"mango","vegtables":"cucumber","season":"monsoon"};
    $display("print the string= %p",pqr);
  end
endmodule

// output
xcelium> run
print the array of abc ='{'h1:20, 'h19:22, 'h26:66}
print the string= '{"fruits":"mango", "season":"monsoon", "vegtables":"cucumber"}
xmsim: *W,RNQUIE: Simulation is complete.
