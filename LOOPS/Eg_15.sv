module eg;
  int a;
  initial begin
    while(a<10)begin
      $display("A=%0d",a);
      a++;
      if(a==3)begin
        continue;
      end
    end
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
