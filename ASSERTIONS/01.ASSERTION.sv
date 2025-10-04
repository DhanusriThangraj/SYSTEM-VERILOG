//IMMEDIATE ASSERTION

module sample;
  reg a=1,b=0;
  reg y;
  assign y=a^b;
  
  always @(*)begin
  assert(y)   
    $display("expression evaluates to true"); 
       else   
         $fatal("--------expression evaluates to false--------");   end
  
endmodule

//output
# run -all
# expression evaluates to true
# exit
