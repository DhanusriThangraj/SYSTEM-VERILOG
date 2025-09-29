module func;
  int result;
  initial begin
    result=display();
    $display("result=%d",result);
  end
  
  function int display();
      $display("DHANU");
    endfunction
endmodule


// output
# //
# Loading sv_std.std
# Loading work.func(fast)
# 
# run -all
# DHANU
# result=          0
# exit

// You declared display() as a function returning int.

// function int display();


// But inside the function you never wrote return <value>;.

// $display("DHANU");
// // no return statement!


// In SystemVerilog, if a function doesn’t explicitly return a value, the simulator will use 0 as the default return value.

// So:

// display(); prints "DHANU".

// The function returns 0.

// That 0 gets assigned to result.
