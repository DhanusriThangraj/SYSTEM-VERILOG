class existing_class;
  int addr=123;
  function  new(int addr);
    this.addr=addr;
    $display("addr=%0h ",addr);
  endfunction
endclass
  
class extended_class extends existing_class;
      int data=98765;
  function new(int addr,int data);
        super.new(addr);
        this.data=data;
        $display("data=%0d",data);
      endfunction
 endclass
    
module example;
  extended_class e1;
  initial begin
    e1=new(45,89);
    $display("display the values of addr=%0h and data=%0d",e1.addr,e1.data);
    
    $display("initialize value=%0h",e1.addr);
    $display("initialize value=%0d",e1.data);
  end
 endmodule

// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
addr=2d 
data=89
display the values of addr=2d and data=89
initialize value=2d
initialize value=89
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
