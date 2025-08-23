class example;
  rand bit sel;
  rand bit [3:0]out;
  constraint c1 {
                 if(sel==1)
                  out==10;
                 else
                  out==5;}
  function void display();
    $display("SEL=%0b OUT=%0d",sel,out);
  endfunction
endclass

module sample;
  example e1;
  initial begin
     e1=new();
    repeat(10)begin 
      e1.randomize();
      e1.display();
    end
  end
endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
SEL=1 OUT=10
SEL=0 OUT=5
SEL=1 OUT=10
SEL=1 OUT=10
SEL=0 OUT=5
SEL=1 OUT=10
SEL=0 OUT=5
SEL=0 OUT=5
SEL=1 OUT=10
SEL=0 OUT=5
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
