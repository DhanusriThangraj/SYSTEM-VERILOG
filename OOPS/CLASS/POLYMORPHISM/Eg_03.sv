class sample;
  string a;
  function void display();
    $display("Display the values of a=%0s",a);
  endfunction
endclass

class sample1 extends sample;
  string a;
  function void display();
    $display("Display the values of a=%0s",a);
endfunction
endclass

class sample2 extends sample;
  string a;
  function void display();
    $display("Display the values of a=%0s",a);
endfunction
endclass    
    
class sample3 extends sample;
  string a;
  function void display();
    $display("Display the values of a=%0s",a);
endfunction
endclass
    
module  example;
  initial begin
    sample samples[2:0];
    sample1 s1=new();
    sample1 s2=new();
    sample1 s3=new();
    
    samples [0]=s1;
    samples [1]=s2;
    samples [2]=s3;
    
    s1.a="qwerty";
    s2.a="mnbvcx";
    s3.a="kjhgfd";
    
    s1.display();
    s2.display();
    s3.display();
    
  end
endmodule
// output
xcelium> run
Display the values of a=qwerty
Display the values of a=mnbvcx
Display the values of a=kjhgfd
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
