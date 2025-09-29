 task can be called from a function by using a fork join_none
module func;
  initial begin
    $display("%d",add(5));
  end
  
  function int add(int sum); 
    fork
    sum++;
    display();
    join
    return sum;
  endfunction 
  
  task display();
    $display("----DHANUSRI-----");   
  endtask
endmodule


//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
----DHANUSRI-----
          6
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 29, 2025 at 04:38:29 EDT  (total: 00:00:02)
Done

module func;
  initial begin
    $display("%d",add(5));
  end  
  function int add(int sum); 
    fork
    sum++;
    display();
    join_none
    return sum;
  endfunction 
  
  task display();
    $display("----DHANUSRI-----");   
  endtask
endmodule
//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
          5
----DHANUSRI-----
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 29, 2025 at 04:43:21 EDT  (total: 00:00:02)
Done   
   
   
