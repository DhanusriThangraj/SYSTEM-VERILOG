module func;

  initial begin
             $display("%0d",count());
             $display("%0d",count());
             $display("%0d",count());

  end
  
  function  automatic int count();
   
    int counter=1;
    counter=counter+1;
    return counter;
  endfunction
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 28 13:39 2025
2
2
2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Sun Sep 28 13:39:53 2025
Done

Step-by-step:
Call	counter created?	counter initialized?	counter incremented	counter returned
1        	Yes (new)	            1	                     2	             2
2       	Yes (new)	            1	                     2	             2
3        	Yes (new)	            1	                     2	             2

✅ Notice: each call is independent. The previous value of counter is gone.

Automatic → “separate memory every time” → previous value erased.
By default, local variables in a function are automatic.

That means: each time you call the function, you should get a new variable, so the value resets.

If you want persistence, you must write static.
