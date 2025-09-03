class sample;
  rand int data;
  constraint c1 {data < 30;} //constraint conflicting
endclass

module sample;
  initial begin
    sample s1;
    s1=new();
    s1.randomize() with {data == 40;};
    $display("data=%0d",s1.data);
  end
endmodule

// output
Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 12
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.
