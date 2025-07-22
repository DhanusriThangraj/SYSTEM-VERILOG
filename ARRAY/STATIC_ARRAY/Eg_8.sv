
module static_array;
  int a[10] ;
  initial begin
    foreach (a[i]) begin 
      a[i]=$urandom_range(10,50);
      $display("display the values[%0d]=[%0d]",i,a[i]); end
      $display("view all the values =%p",a);
  
  end
endmodule


// output
display the values[0]=[21]
display the values[1]=[28]
display the values[2]=[29]
display the values[3]=[18]
display the values[4]=[30]
display the values[5]=[50]
display the values[6]=[14]
display the values[7]=[34]
display the values[8]=[30]
display the values[9]=[12]
view all the values ='{21, 28, 29, 18, 30, 50, 14, 34, 30, 12}
