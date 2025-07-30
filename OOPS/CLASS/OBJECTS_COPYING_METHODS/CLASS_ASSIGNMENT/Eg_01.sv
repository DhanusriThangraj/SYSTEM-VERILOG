class class_assignment;
  int a=10;
  int b=20;
  function void sample();
    $display("display the values by using the class_assignment a=%0d,b=%0d",a,b);
  endfunction
endclass
module example;
     class_assignment c1,c2;
    initial begin  
      c1=new();
      c1.sample; 
      c1.a=13;
      c1.b=56;
      c2=c1;
      c1.sample;
      c2.sample;   
    end
  endmodule

//output
xcelium> run
display the values by using the class_assignment a=10,b=20
display the values by using the class_assignment a=13,b=56
display the values by using the class_assignment a=13,b=56
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
