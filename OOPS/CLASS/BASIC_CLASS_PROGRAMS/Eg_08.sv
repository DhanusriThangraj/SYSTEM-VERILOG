class home;
  int light ;
  int fan;
  string switch; 
  function void sample();
    switch="on";
    $display("Print Switch is  %s",switch);
  endfunction
endclass


module sample;
  home h1;
  initial begin
    if(h1!=null)
      $display("object is created");
    else
      $display("object is not created");  
     h1.sample();
  end 
 
endmodule

// output
xcelium> run
object is not created
xmsim: *E,TRNULLID: NULL pointer dereference.
          File: ./testbench.sv, line = 9, pos = 9
         Scope: worklib.$unit_0x4ccdf83b::home::sample
          Time: 0 FS + 0
Verilog Stack Trace:
0: function worklib.$unit_0x4ccdf83b::home::sample at ./testbench.sv:9
1: initial block in sample at ./testbench.sv:21


./testbench.sv:9     switch="on";
xcelium> exit
