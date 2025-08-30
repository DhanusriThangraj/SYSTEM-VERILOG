module eg;
  int a;
  initial begin
    while(a<10)begin
    $display("A=%0d",a);
      if(a==3)begin
        break;
      end
      a++;
    end
  end
endmodule

//output
# run -all
# A=0
# A=1
# A=2
# A=3
# exit
