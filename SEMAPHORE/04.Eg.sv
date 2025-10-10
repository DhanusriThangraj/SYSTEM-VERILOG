module semaphore_example;
  semaphore d;
  initial begin
    d=new(6);
  fork
    
    display_1(d);
    display_2(d);
    
  join
     end
  endmodule

task display_1(semaphore d);
  if(d.try_get(5))
    $display("----received-------",$time);
  else
    $display("----not received------",$time);
    
  #5;
    $display("----APPLE------",$time);
  #10 d.put(2);
  endtask    
task display_2(semaphore d);
  #20 d.get(1);
  $display("----grapes------",$time,d.try_get());
 
  if (d.try_get(3))
    $display("----key 2 received-------",$time);

  else
        $display("----not received------",$time);

    $display("----ORANGE------",$time);
    #10 d.put(1);

  endtask

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 10 01:09 2025
----received-------                   0
----APPLE------                   5
----grapes------                  20          1
----not received------                  20
----ORANGE------                  20
           V C S   S i m u l a t i o n   R e p o r t 
Time: 30 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Fri Oct 10 01:09:49 2025
Done


2️⃣ try_get() Behavior

Non-blocking: It does not wait for tokens.

Return value:

1 → success (enough tokens taken)

0 → failure (not enough tokens available)

If you ignore the return value, the code still executes the next statement, regardless of whether it succeeded or failed.
