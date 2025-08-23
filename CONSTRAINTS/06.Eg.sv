class example;
  rand bit sel;
  rand bit [3:0]out;
  constraint c1 {(sel==1)->out==10;}  //Implication operator in constraint+
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
