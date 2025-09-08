class example;
  virtual inter interf;
  
  function new (virtual inter interf);
    this.interf=interf;
  endfunction
  
  task drive(logic [2:0]addr,[3:0]data);
    @ (posedge interf.clk);
    this.interf.data=data;
    this.interf.addr=addr;
    $display("DATA=%0d ADDR=%0d",data,addr);
  endtask
endclass
