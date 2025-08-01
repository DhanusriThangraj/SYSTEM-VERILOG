virtual class sample;
  int i;
  pure virtual function void display(int a);
endclass
    class sample_1 extends sample;
      function void display(int a);
        i=-a;
        $display("Display the values of i=%0d",i);
        endfunction      
    endclass
    
    module example;
      initial begin
        sample_1 s1=new();
        s1.display(-5);
      end
    endmodule
    
// output
xcelium> run
Display the values of i=5
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
