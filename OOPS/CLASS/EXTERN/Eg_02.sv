
class example;
  int a=123;
  int b=987;
  extern task  sum();    
endclass
task example::sum();
      int sum;
      sum=a+b;
      $display("Display the values of sum=%0d",sum);
endtask

    module sample();
      initial begin
        example e=new();
        e.sum();
      end
    endmodule
    
// output
xcelium> run
Display the values of sum=1110
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
