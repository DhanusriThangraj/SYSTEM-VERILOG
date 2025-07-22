module queue();
  int var_1[$]={10,20,30,40,50};
  int var_2[$:8];
  int i,j;
  initial begin
    var_2=var_1;
    $display("var_2=%p",var_2);
    
    var_1={var_1,60};
    $display("inserting end of the array var_1  =%p",var_1);
    
    var_1={80,var_1};
    $display("inserting front of the array var_1=%p",var_1);
    
    i=var_1[0];
    j=var_1[$];
    $display("value of i=%0d and j=%0d",i,j);
    
    var_1[2]=100;
    $display("after changing %p",var_1);
    
    var_1= var_1[2:$];
    $display("delete the 0th and 1th index %p",var_1);
    
    var_1 = {};
    $display("delete all the array element %p",var_1);
    
    var_2={var_2,60,70,80,90,100};
    $display("display the array element %p",var_2);
       
  end
endmodule

// output
xcelium> run
var_2='{10, 20, 30, 40, 50}
inserting end of the array var_1  ='{10, 20, 30, 40, 50, 60}
inserting front of the array var_1='{80, 10, 20, 30, 40, 50, 60}
value of i=80 and j=60
after changing '{80, 10, 100, 30, 40, 50, 60}
delete the 0th and 1th index '{100, 30, 40, 50, 60}
delete all the array element '{}
    var_2={var_2,60,70,80,90,100};
                               |
xmsim: *W,RTSVQO (./testbench.sv,30|31): SystemVerilog queue overflow beyond 9 items, tail entry lost.
display the array element '{10, 20, 30, 40, 50, 60, 70, 80, 90}
xmsim: *W,RNQUIE: Simulation is complete.
