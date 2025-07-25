class sample;
  static int a;
  int b;
  function void function_sample();
      ++a;
      b++;
    endfunction
endclass
module example;
  sample s1[7];
  initial begin
    foreach(s1[i]) begin 
      s1[i]=new();
      s1[i].function_sample();
      $display("Display the values of a[%0d]=[%0d],b[%0d]=[%0d]",i,s1[i].a,i,s1[i].b);
    end
    foreach (s1[i]) begin
      $display("Display the value of a[%0d]=[%0d]",i,s1[i].a);
    end
    
  end
endmodule

// output
xcelium> run
Display the values of a[0]=[1],b[0]=[1]
Display the values of a[1]=[2],b[1]=[1]
Display the values of a[2]=[3],b[2]=[1]
Display the values of a[3]=[4],b[3]=[1]
Display the values of a[4]=[5],b[4]=[1]
Display the values of a[5]=[6],b[5]=[1]
Display the values of a[6]=[7],b[6]=[1]
Display the value of a[0]=[7]
Display the value of a[1]=[7]
Display the value of a[2]=[7]
Display the value of a[3]=[7]
Display the value of a[4]=[7]
Display the value of a[5]=[7]
Display the value of a[6]=[7]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
