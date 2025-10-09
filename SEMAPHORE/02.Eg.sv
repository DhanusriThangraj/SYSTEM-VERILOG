
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
  d.get(5);
    $display("----APPLE------");
    #10 d.put(1);
  endtask
   
task display_2(semaphore d);
  d.get(2);
    $display("----ORANGE------");
    #10 d.put(1);
  endtask

// output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 09:17 2025
----APPLE------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Thu Oct  9 09:17:01 2025
Done


// the 1st display takes the 5 keys .
after process it puts only one key .but the 2nd display requires 2 keys .
so the 2nd cannot processed .its waiting for the keys


  
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
  d.get(5);
    $display("----APPLE------");
  #10 d.put(5);
  endtask
task display_2(semaphore d);
  d.get(2);
    $display("----ORANGE------");
  endtask

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 09:39 2025
----APPLE------
----ORANGE------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Thu Oct  9 09:39:11 2025
Done

//display1 puts 5 keys .so,the display_2 is processed.
  

