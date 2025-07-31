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
        
    this.data=data;  
    super.new(addr);  //second line in super keyword
    
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
** Error: testbench.sv(137): The call to "super.new" must be the first statement in the constructor.
End time: 05:49:04 on Jul 31,2025, Elapsed time: 0:00:00
Errors: 1, Warnings: 0
End time: 05:49:04 on Jul 31,2025, Elapsed time: 0:00:00

