
module func;
  initial begin
             $display("%0d",count());
             $display("%0d",count());
             $display("%0d",count());
  end  
  function int count();
    static int counter=1;
    counter=counter+1;
    return counter;
  endfunction
endmodule

// output
Loading snapshot worklib.func:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
2
3
4
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 28, 2025 at 09:54:21 EDT  (total: 00:00:01)
Done


Call	counter created?	previous value used?	counter incremented	counter returned
1     	Yes (once)             	1	                      2	              2
2	      No(reuse same)	        2	                      3	              3
3	      No(reuse same)	        3	                      4	              4

✅ Notice: only one memory cell exists, and the value is remembered and updated every time.

Think of it as a permanent whiteboard that stays even after the function finishes.

Every time the function is called, it reuses the same whiteboard instead of making a new one.
  
So previous values are remembered.


 Static → “single memory cell” → value kept and updated.
