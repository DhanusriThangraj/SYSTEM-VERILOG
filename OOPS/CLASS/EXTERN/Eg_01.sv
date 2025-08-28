An "extern" keyword is used for methods which provides a facility for class methods to define them outside of the class body.
If the method definition is lengthy (many lines of code inside a method), the extern method provides better readability and cleaner implementation of the class.
An extern keyword is used for method declaration and a class name with a scope resolution operator is used for method definition.  
  
Note:-
Method definition and declaration should have the same number of argument lists, data types, and argument names.
For the extern function return type should be the same if used.
  
class example;
  string name;
  extern function void display();
endclass

    
function void example::display();
  $display("Name=%0s",name);
  endfunction
    
    module sample;
      initial begin
        example e1;
        e1=new();
        $display("-------------");
        e1.name="DHANU";
        e1.display();
        $display("-------------");
       
      end
    endmodule

// output
xcelium> run
-------------
Name=DHANU
-------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
