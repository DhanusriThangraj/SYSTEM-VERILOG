class sample;
 const int a;
  string b;
  function new();
    a=12;
    b="instance class";
  endfunction
  function void example();  
    $display("Display the values of a=%0d and b=%0s",a,b);
  endfunction 
endclass
  module example1;
    sample s1;
    initial begin
      s1=new();
      s1.example();
      s1.b="In instance class,the values cannot assigned firstly";
      s1.example();   
    end
  endmodule

// output
xcelium> run
Display the values of a=12 and b=instance class
Display the values of a=12 and b=In instance class,the values cannot assigned firstly
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

 
