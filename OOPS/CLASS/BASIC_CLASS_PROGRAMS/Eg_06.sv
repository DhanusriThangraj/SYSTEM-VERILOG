
class example;
  byte a;
  function void display();
    $display("Display the values of a=%0b",a);
  endfunction   
endclass
module test;
  example eg1=new();
  example eg2;
  example eg3;
  initial begin
    eg1.a=55;
    eg1.display();
    
    if(eg1!=null)
      eg1.a=581;
    else
      $display("eg1's object is not created");
    eg1.display();
    
    if(eg2!=null)
      eg2.a=581;
    else
      $display("eg2's object is not created");
    
    if(eg3!=null)
      eg3.a=10;
    else
      $display("eg3's object is not created");    
      end
endmodule


// output
xcelium> run
Display the values of a=110111
Display the values of a=1000101
eg2's object is not created
eg3's object is not created
xmsim: *W,RNQUIE: Simulation is complete.
