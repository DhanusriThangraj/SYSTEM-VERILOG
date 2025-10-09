module example;
  event a;
  initial begin
    fork
      #5 ->a;
      begin
       #4 wait(a.triggered);
        $display("-----wait happens-----",$time);
      end
      
      begin
       #4 @(a);
        $display("-----capture happens-----",$time);
      end

    join
  end
endmodule

//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 03:41 2025
-----wait happens-----                   5
-----capture happens-----                   5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Thu Oct  9 03:41:58 2025
Done
