Protected is similar to local but a member will be visible inside subclass
It is not used in the module and its is accesed in the subclasses

class example_class;
   protected int i;
endclass
   
class example1 extends example_class;
   function void display(int a);
    i=a;
    $display("values of i=%0d",i);
  endfunction
endclass

module example;
  initial begin
    example1 e1;
    e1=new();
    e1.display(123);   
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
values of i=123
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
