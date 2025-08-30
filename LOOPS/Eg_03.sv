first execute the condition once and then check whether the condition is true or not. 
If the condition is true, the set of statements is executed until the condition turns out to be false. 
If the condition is false the loop ends right there.
module sample;
  int a;
  initial begin
    do begin
      $display("A=%0d",a);
      a++;
    end
    while(a<10);
  end
endmodule

// output
# run -all
# A=0
# A=1
# A=2
# A=3
# A=4
# A=5
# A=6
# A=7
# A=8
# A=9
# exit
