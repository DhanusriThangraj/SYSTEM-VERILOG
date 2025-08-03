class friuts;
  int apple=12;
  int orange=45;
  byte grapes=89;
  string melon="friut";
  function void fruits1();
    int apple;
    int orange;
    byte grapes;
    string melon;
    $display("Display the values of the friuts apple=%0d,orange=%0d,grapes=%0d,melon=%0s",this.apple,this.orange,this.grapes,this.melon);
    apple=34;
    orange=56;
    grapes=45;
    melon="watermelon";
    
    this.apple=apple;
    this.orange=orange;
    this.grapes=grapes;
    this.melon=melon;
    $display("After update:: apple=%0d,orange=%0d,grapes=%0b,melon=%0s",apple,orange,grapes,melon);
    apple=343;
    orange=156;
    grapes=4567;
    melon="FFFwatermelon";
    
    apple=apple;
    orange=orange;
    grapes=grapes;
    melon=melon;
    $display("After update:: apple=%0d,orange=%0d,grapes=%0b,melon=%0s",apple,orange,grapes,melon);
     apple=343;
    orange=156;
    grapes=4567;
    melon="FFFwatermelon";
    
    this.apple=apple;
    this.orange=orange;
    this.grapes=grapes;
    this.melon=melon;
    $display("After update::   apple=%0d,orange=%0d,grapes=%0b,melon=%0s",apple,orange,grapes,melon);
    
  endfunction
  endclass

module fruits;
  friuts f1=new();
  initial begin
    f1.fruits1();
    $display("last values::apple=%0d,orange=%0d,grapes=%0b,melon=%s",f1.apple,f1.orange,f1.grapes,f1.melon);
   
  end
endmodule
// output
xcelium> run
Display the values of the friuts apple=12,orange=45,grapes=89,melon=friut
After update:: apple=34,orange=56,grapes=101101,melon=watermelon
After update:: apple=343,orange=156,grapes=11010111,melon=FFFwatermelon
After update::   apple=343,orange=156,grapes=11010111,melon=FFFwatermelon
last values::apple=343,orange=156,grapes=11010111,melon=FFFwatermelon
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
