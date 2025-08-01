class parent_class;
      int a;
      string b;
      byte c; 
  function new();
      a=567;
      b="qwerty";
      c=89;
  endfunction
  
  function void display();
    $display("Display the values of a=%0d,b=%0s,c=%0b",a,b,c);
  endfunction
endclass

class child1 extends parent_class;
      int a;
      string b;
  function new();
     a=57;
     b="rty";
  endfunction
  function void display();
   $display("Display the values of a=%0d,b=%0s,c=%0b",a,b,c);
  endfunction
endclass

class child2 extends  parent_class;
    string b ;
  function new();
     b="kjhgf";
  endfunction
  
  function void display();
   $display("Display the values of a=%0d,b=%0s,c=%0b",a,b,c);
  endfunction
endclass

module sample;
   child1 c1;
   child2 c2 ;
   
  initial begin
    c1=new();
    c2=new();
    c1.display();
    c2.display();
    c2.a=7;
    c2.b="qy";
    c2.c=8; 
    c2.display();
  end
endmodule


// output
# run -all
# Display the values of a=57,b=rty,c=1011001
# Display the values of a=567,b=kjhgf,c=1011001
# Display the values of a=7,b=qy,c=1000
# exit

