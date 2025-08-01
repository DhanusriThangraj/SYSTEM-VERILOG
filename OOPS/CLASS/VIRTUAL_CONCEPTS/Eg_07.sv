class sample;
  int i=12;
 virtual function  int display();
    display=i;
   $display("values of display=%0d",display);
  endfunction
endclass
    class sample_1 extends sample;
      int i=34;
      function int display();
        display=-i;
        $display("values of display=%0d",display);
        endfunction      
    endclass
    
    module example;
      initial begin
        sample_1 s1=new();
        sample s2 = s1;
        s2.display();
        $display("values of i=%0d",s2.i);
      end
    endmodule

// output
xcelium> run
values of display=-34
values of i=12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
