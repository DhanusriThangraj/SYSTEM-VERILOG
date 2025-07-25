class home;
  int light ;
  int fan;
  string switch;
  
  function void sample();
    switch="on";
    $display("Print Switch is  %s",switch);
 
  endfunction
endclass
module sample;
  home h1=new();
  home h2;
  initial begin
    if(h1!=null)
      $display("object  is created");
    else
      $display("object is not created");  
     h1.sample();
     h1.light=0;
    $display("the light is off %0b",h1.light);
    
    if(h2!=null)
      $display("object 2 is created");
    else 
      $display("object 2 is not created");
           
  end 
endmodule

// output
xcelium> run
object  is created
Print Switch is  on
the light is off 0
object 2 is not created
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
