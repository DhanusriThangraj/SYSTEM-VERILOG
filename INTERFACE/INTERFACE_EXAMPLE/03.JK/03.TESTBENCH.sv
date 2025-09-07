module jk_tb(inter interf);
  initial begin
    $display("TIME\tCLK\tRESET\tJ\tK\tQ\tQbar\t");
    $monitor("%0t\t%0b\t%0b\t%0b\t%0b\t%0b\t%0b",$time,interf.clk,interf.reset,interf.j,interf.k,interf.q,interf.qbar);end
    initial begin
      
    interf.clk=0;
      forever #5 interf.clk=~interf.clk; end
    initial begin
      
     #5;interf.reset=1;
     #5;interf.reset=0;
    
     #5;interf.j=0;interf.k=1;
     #5;interf.j=0;interf.k=0;
     #5;interf.j=1;interf.k=1;
     #5;interf.j=1;interf.k=0;
      
      
     #1;$finish;  
  end
endmodule
