class example;
  virtual inter interf;
   
  function new(virtual inter interf);
    this.interf=interf;
  endfunction
  
  task drive();
    interf.sum=interf.a+interf.b;
    $display("A=%0d B=%0d SUM=%0d",interf.a,interf.b,interf.sum);   
  endtask
  
endclass
