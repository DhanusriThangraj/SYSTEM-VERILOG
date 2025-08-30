module sample;
  int a;
  initial begin
    forever begin
      $display("TIME=%0t A=%0d",$time,a);
      #2 a++;
      if(a==10)begin
        break;
      end
    end
  end
endmodule

//output
# run -all
# TIME=0 A=0
# TIME=2 A=1
# TIME=4 A=2
# TIME=6 A=3
# TIME=8 A=4
# TIME=10 A=5
# TIME=12 A=6
# TIME=14 A=7
# TIME=16 A=8
# TIME=18 A=9
# exit
# End time: 04:49:57 on Aug 30,2025, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
