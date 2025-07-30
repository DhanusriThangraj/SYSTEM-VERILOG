class example;
  string a;
  byte b;
  function void display();
    $display("DISPLAY THE VALUES OF THE a=%s and b=%0b",a,b);
    endfunction
  function void deep(example copy);
    this.a=copy.a;
    this.b=copy.b;  
  endfunction  
endclass

module sample;
  example e1,e2;
  initial begin
    e1=new();
    e2=new();
    e2.deep(e1);
    
    e1.a="qwertyuiopasdfghjklzxcvbnm";
    e1.b=7;
    e1.display();
    e2.display();
    e1.a="sdfghjk";
    e1.b=11;
    e1.display(); 
    e2.a="lkjhgfdsa";
    e2.display();
  end
endmodule


// output
# run -all
# DISPLAY THE VALUES OF THE a=qwertyuiopasdfghjklzxcvbnm and b=111
# DISPLAY THE VALUES OF THE a= and b=0  //initially we cannot give the values of a and b
# DISPLAY THE VALUES OF THE a=sdfghjk and b=1011
# DISPLAY THE VALUES OF THE a=lkjhgfdsa and b=0
# exit
