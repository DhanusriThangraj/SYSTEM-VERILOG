module array_manipulator;
  string array[$];
  string check;
  int a[$];
 
  initial begin
    $display("display the initial values %p",array);
//     asic values b=098.y=121; m=109; o=111; n=110;
    array={"bangalore","yelahanka","maruthinagar","oldtown","newtowm"};
    $display("display the elements %p",array);
    
    array=array.find(check) with (check>="oldtown");
    $display("display the output %p",array);
    
    array={"bangalore","yelahanka","maruthinagar","oldtown","newtowm"};

    a = array.find_index(item) with (item == "newtowm");
    $display("Index of 'bangalore': %p", a);

    array=array.find_first(check) with (check<"yelahanka"&check>="newtom");
    $display("display the elements %p",array);
    
    array={"bangalore","yelahanka","maruthinagar","oldtown","yelahanka","newtowm","zzzzzz","oldtown"};
    a=array.find_last_index(check) with (check<"yelahanka");
    $display("display the elemnets %p",a);
    
    
    array=array.find_last(check) with (check<"oldtown");
    $display("output",array);
    //     its takes array {"newtom"}
    a=array.find_last_index(check) with (check=="newtowm");
    $display("output %p",a);
    
  end 
endmodule
// output
# run -all
# display the initial values '{}
# display the elements '{"bangalore", "yelahanka", "maruthinagar", "oldtown", "newtowm"}
# display the output '{"yelahanka", "oldtown"}
# Index of 'bangalore': '{4}
# display the elements '{"oldtown"}
# display the elemnets '{7}
# output{newtowm}
# output '{0}
# exit


