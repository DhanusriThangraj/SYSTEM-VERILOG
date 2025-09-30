class sample_1;
  rand bit [2:0]a;
  constraint c1 {a==1;};
endclass

class sample_2;
  rand bit [2:0]b;
  static constraint c2 {b==1;};
endclass

module example;
  initial begin
    sample_1 s1=new(),s2=new();
    sample_2 s3=new(),s4=new();
     
    s1.c1.constraint_mode(0);
    repeat(5)begin
      s1.randomize();
      s2.randomize();
      $display("S1.A=%0d----------------S2.A=%0d",s1.a,s2.a);
    end 
    
    s3.c2.constraint_mode(0);
    repeat(5)begin
      s3.randomize();
      s4.randomize();
      $display("S3.B=%0d----------------S3.B=%0d",s3.b,s4.b);
    end    
  end
endmodule

//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
S1.A=7----------------S2.A=1
S1.A=0----------------S2.A=1
S1.A=0----------------S2.A=1
S1.A=6----------------S2.A=1
S1.A=2----------------S2.A=1
S3.B=6----------------S3.B=4
S3.B=7----------------S3.B=0
S3.B=5----------------S3.B=5
S3.B=5----------------S3.B=6
S3.B=1----------------S3.B=6
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 30, 2025 at 11:05:51 EDT  (total: 00:00:01)
Done
