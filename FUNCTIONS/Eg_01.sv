module func;
  int result;
  int a=2;
  int b=12;
  int variable_arguments;
  int by_position;
  initial begin
    result = sum(2,9);//passing arguments by values
    
    $display("passing arguments by values result=%0d",result);

    $display("by using display (function)sum=%0d",sum(78,25)); //by using display
    

    variable_arguments= sum(a,b);
    $display("passing arguments by variable_arguments=%0d",variable_arguments);
    
    
     by_position = sum(.a(136),.b(678));
    $display("passing arguments by positional=%0d",by_position);

  end
    
  
endmodule

  function int sum(int a,int b);
    int add;
    add=a+b;
    $display("---------------------");
      $display("add=%0d",add);
    return add;
  
  endfunction

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 27 06:35 2025
---------------------
add=11
passing arguments by values result=11
---------------------
add=103
by using display (function)sum=103
---------------------
add=14
passing arguments by variable_arguments=14
---------------------
add=814
passing arguments by positional=814
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Sat Sep 27 06:35:49 2025
Done
