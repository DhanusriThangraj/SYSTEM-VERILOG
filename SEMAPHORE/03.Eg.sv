module semaphore_example;
  semaphore d;
  initial begin
    d=new(5);
  fork
    display_1(d);
    display_2(d);
 join
     end
  endmodule

task display_1(semaphore d);
    d.get(6);                                          // 6 keys
    $display("----APPLE------");
    #10 d.put(1);
endtask
task display_2(semaphore d);
    d.get(2);
    $display("----ORANGE------");
endtask

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 09:56 2025
----ORANGE------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Thu Oct  9 09:56:46 2025
Done

Semaphore currently has 5 tokens.

get(6) sees not enough tokens.

So display_1 waits (blocks) until the semaphore has 6 tokens available.

Since no other process puts more tokens back, display_1 will wait forever (deadlock).


3️⃣ Why No Error?

SystemVerilog treats get() as blocking, not error-prone.

There’s no exception or error if you request more than the available tokens.

The simulation will hang (stall) at that line until enough tokens are put back.


✅ Key Takeaways

get(n) never errors — it blocks until enough tokens are available.

Requesting more than available → process stalls, can cause deadlock if no tokens are returned.

To avoid this, either:

Don’t request more than the semaphore’s max, or

Make sure other processes return tokens (put()) to eventually unblock.
