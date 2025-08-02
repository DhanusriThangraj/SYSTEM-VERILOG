class company;
  string name="SILICIC";
  function void company();
    $display("%0s",name);
    endfunction
endclass

class company1 extends company;
  string name="INOVA";
  function void company1();
    super.company();
    $display("%0s",name);
  endfunction  
endclass

class company2 extends company1;
  string name="TECHNOlOGIES";
  function void company2();
    super.company1;
    $display("%0s",name);
  endfunction
endclass
module  example;
  company2 c2=new();
  initial begin
    c2.company2();
  end
endmodule

// output
xcelium> run
SILICIC
INOVA
TECHNOlOGIES
xmsim: *W,RNQUIE: Simulation is complete.
