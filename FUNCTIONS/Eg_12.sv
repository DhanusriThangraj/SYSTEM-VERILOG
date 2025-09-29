module func;
  int result;
  initial begin
    result=display();
    $display("result=%d",result);
  end
  
  function int display();
      $display("DHANU");
      return 100;
    endfunction
endmodule

//output
# run -all
# DHANU
# result=        100
# exit
