
class home;
  int light=10;
  int fan=100;
  string switch="off";
  function void home1();
    
    $display("initial value::display the values of light=%0d ,fan=%0d and switch=%0s",light,fan,switch);
    
    light=0;
    fan=1;
    switch="on";
    this.light=light;
    this.fan=fan;
    this.switch=switch;
    $display("After update::display the values of light=%0d,fan=%0d,switch=%s",light,fan,switch);
    
  endfunction
endclass

module home2;
  home h2;
  initial begin
    h2=new();
    h2.home1();
     end
endmodule

// output
xcelium> run
initial value::display the values of light=10 ,fan=100 and switch=off
After update::display the values of light=0,fan=1,switch=on
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
