class sample;
  rand bit [9:0]data;
  constraint c1 {!(data[4:0]  inside {0,1});
                 !(data[5:1]  inside {0,1});
                 !(data[6:2]  inside {0,1});
                 !(data[7:3]  inside {0,1});
                 !(data[8:4]  inside {0,1});
                 !(data[9:5]  inside {0,1});}
                  
endclass
module example;
  initial begin
    sample s1;
    s1=new();
    repeat(5)begin
      s1.randomize();
      $display("data=%0b",s1.data);
    end  
    end
endmodule
  
  //output
# run -all
# data=101010001
# data=1101011100
# data=1000111010
# data=1011101100
# data=1101000111
# exit
