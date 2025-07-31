class parent_class;
  string x="qwerty";
  function void display();
    $display("values of x=%0s",x);
  endfunction
endclass

class child_class extends parent_class;
  byte y=45678;
  function void display();
      super.display();
    $display("values of y=%0b",y);
    endfunction
endclass

module sample;
  child_class c1;
  initial begin
    c1=new();
    c1.display();
  end
endmodule

// output
# run -all
# values of x=qwerty
# values of y=1101110
# exit
