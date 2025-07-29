class home;
  int light=10;
  int fan=100;
  string switch="off";
  function void home1();
	int light;
    int fan;
    string switch;
   	light = 11;
    switch = "on";
    fan = 11;
    $display("initial value::display the values of light=%0d ,fan=%0d and switch=%0s",light,fan,switch);
   	light = 21;
    switch = "saaa";
    fan = 11;

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
    $display("Display the values of light=%0d,fan=%0d,switch=%0s",h2.light,h2.fan,h2.switch) ; 
     end
endmodule
// output
xcelium> run
initial value::display the values of light=11 ,fan=11 and switch=on
After update::display the values of light=21,fan=11,switch=saaa
Display the values of light=21,fan=11,switch=saaa
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
  
