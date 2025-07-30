
class example;
  string a="DHANUSRI";
  int b=123423;
  function void display();
    $display("Display the values a=%0s and b=%0d",a,b);
    endfunction
endclass

module sample;
  example d1,d2;
  initial begin
    d1 = new();
    d1.display();
    d2=new d1;
    d2.a="DEVAKI";
    d1.display();
    d2.display();  
  end
endmodule 

// output
xcelium> run
Display the values a=DHANUSRI and b=123423
Display the values a=DHANUSRI and b=123423
Display the values a=DEVAKI and b=123423
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
