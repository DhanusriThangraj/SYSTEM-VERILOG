// Acces to Static Properties and static methods from outside the class heirarchy
Scope resolution operator in classes which is used to access the class properties and methods outside of the 
 class using class name and followed by symbol :: and then the propeties and methods of a class.


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
