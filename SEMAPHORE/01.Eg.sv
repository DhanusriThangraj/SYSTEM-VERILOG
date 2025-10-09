A semaphore is a synchronization lock that controls how many processes can access a shared resource at the same time.

“Get the key → work → Put the key back.”
Semaphore = Key keeper for shared resources.
  
module semaphore_example;
  semaphore d;
  initial begin
   d=new(1);
  fork    
    display_2(d);
    display_1(d);  
  join
     end
  endmodule

task display_1(semaphore d);
   d.get(1);
    $display("----APPLE------");
    #10 d.put(1);
  endtask
  task display_2(semaphore d);
    d.get(1);
    $display("----ORANGE------");
    #10 d.put(1);
  endtask

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 08:44 2025
----ORANGE------
----APPLE------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Thu Oct  9 08:44:29 2025
Done
