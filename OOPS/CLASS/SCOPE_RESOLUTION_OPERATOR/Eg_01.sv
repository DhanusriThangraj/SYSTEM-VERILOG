
class example;
 static  string a="apple";
  static function void display();
    string c;
    string b="orange";
    c={a,b};
    $display("Display=%0s",c); 
  endfunction
endclass

module sample;
  initial begin
    example::display();
  end
endmodule

// output
xcelium> run
Display=appleorange
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
