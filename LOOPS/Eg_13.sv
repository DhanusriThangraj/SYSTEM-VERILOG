module eg;
  int a;
  initial begin
    while(a<10)begin
      $display("A=%0d",a);
      a++;
      if(a==3)begin
        break;
      end
    end
  end
endmodule
//output
# run -all
# A=0
# A=1
# A=2
# exit
