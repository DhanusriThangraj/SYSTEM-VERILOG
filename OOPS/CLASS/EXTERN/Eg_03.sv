class base_class;
  int a=12;
  extern function void function_1();
endclass

class sub_class extends base_class;
     int b=15;
  extern function void function_2();
 endclass
    
    function void base_class::function_1();
   $display("display the values of a=%0d",a);
   endfunction
        
    function void sub_class::function_2();
        super.function_1();
         $display("display the values of b=%0d",b);
       endfunction
        
        module sample;
          sub_class s1;
          initial begin
            s1=new();
            s1.function_2();
          end
          endmodule

    // output
    xcelium> run
display the values of a=12
display the values of b=15
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
    
