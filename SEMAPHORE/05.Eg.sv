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
  #10 d.put(10);  //we can adding more keys by using  
  endtask    
task display_2(semaphore d);
  #20 d.get(1); begin
    $display("----grapes------",$time,d.try_get()); 
  end
  //   d=new(10); we can also add keys by using new
  
  if (d.try_get(3))
    $display("----key 2 received-------",$time);

  else
        $display("----not received------",$time);
    $display("----ORANGE------",$time);
    #10 d.put(1);

  endtask

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 10 01:30 2025
----received-------                   0
----APPLE------                   5
----grapes------                  20          1
----key 2 received-------                  20
----ORANGE------                  20
           V C S   S i m u l a t i o n   R e p o r t 
Time: 30 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Fri Oct 10 01:30:24 2025
Done


  Action                                        	Description                         	Note
  new(n)                                   Creates semaphore with n keys	              Only sets initial count
  put(n)                                Adds n keys at runtime                       Can increase total count
  get(n)	                               Takes n keys	                                Blocks if not enough
  try_get(n)	                         Attempts to take n keys	                    Returns 1 (success) or 0 (fail)
  
