The main use of Typedef in class is that sometimes we use class variable before the declaration of the class itself. 
At that time it will cause some compile errors to the code. 
So avoid that compile errors , we can use 'typedef class variable' before the declaration of class itself.

typedef class fruit2;
class fruit1;
fruit2 f;
endclass

class fruit2
fruit1 f;
endclass

=============================================================================
  
typedef class sample2;
 class sample1;

  sample2 s2;

  function new();
    s2=new();
    s2.display();
  endfunction

  
  function void display();
  $display("----------S1 APPLE---------");
endfunction

endclass

class sample2;

  function void display();
  $display("----------S2 APPLE---------");
endfunction

endclass

module example;
initial begin
  sample1 s1=new();  
  s1.display();
end
endmodule

  //output

  # run -all
# ----------S2 APPLE---------
# ----------S1 APPLE---------
# exit
