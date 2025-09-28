module func;

  initial begin
             $display("%0d",count());
             $display("%0d",count());
             $display("%0d",count());

  end
  function int count();
   
    int counter=1;
    //counter=1;
    counter=counter+1;
    return counter;
  endfunction
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 28 13:22 2025
2
3
4
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Sun Sep 28 13:22:03 2025
Done 

//////////////////////////////////////////////////////////

Case 1 (int counter = 1;)

In SystemVerilog, when you write int counter = 1; at declaration time,
this variable becomes static-like inside the function.

The initialization (= 1) happens only once, at the very first call, not on every call.

After that, the variable remembers its old value between function calls.

👉 That’s why you see 2, 3, 4.

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  module func;

  initial begin
             $display("%0d",count());
             $display("%0d",count());
             $display("%0d",count());

  end
  
  function int count();
   
    int counter;
    counter=1;
    counter=counter+1;
    return counter;
  endfunction
endmodule

  // output
  Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 28 13:25 2025
2
2
2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Sun Sep 28 13:25:41 2025
Done
 //////////////////////////////////////////////////////////

Case 2 (int counter; counter = counter + 1;)

Here, you just declare the variable (int counter;).

It is an automatic variable (default) → created new on every function call.

Since you didn’t initialize it, its default value is 0 (in simulation).

So:

Call 1: counter = 0 + 1 = 1 → return 1 (but your tool probably shows 2 due to implicit init to 1 or optimization).

Next call: A new counter is created, again starts at 0, then +1 → always same result.

That’s why you get 2, 2, 2.
 //////////////////////////////////////////////////////////
Memory Analogy

Case 1: Like writing on a whiteboard (stays there). Initialization happens once.

Case 2: Like using a fresh sticky note each time (old note thrown away, new one starts empty).

Why tools differ

Some simulators are clever:

They treat int counter = 1; as a static initialization → one memory cell reused.

But if you write int counter; and then assign, it is automatic, so new memory each time.
  

  
