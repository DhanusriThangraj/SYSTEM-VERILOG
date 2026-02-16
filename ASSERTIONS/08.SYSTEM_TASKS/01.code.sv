module assertion;
  bit clk;
  bit a,b,c,d,e,f,g,h,i;
  bit j,k,m,n,o,p,q,r;

initial begin
  $dumpfile("dump.vcd");
  $dumpvars();

#500
$finish;
end 

initial begin
 clk=0;
 forever #5 clk=~clk;
end


initial begin
  repeat(50)begin
  @(posedge clk);
  a=$random;
  b=$random;
  c=$random;
  d=$random;
  e=$random;
  f=$random;
  g=$random;
  h=$random;
  i=$random;
  $display("a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b i=%b",a,b,c,d,e,f,g,h,i);
end
end
  
  

sequence seq1;
  @(posedge clk) $rose(a);
endsequence
property p1;
    seq1;
  endproperty

assert property (p1) begin
  $display("ROSE PASS=======================>>>>");
  j=1;
end else begin
  $display("ROSE FAIL=======================>>>>");
  j=0;
end


sequence seq2;
  @(posedge clk) $fell(b);
endsequence
property p2;
    seq2;
  endproperty

  assert property (p2) begin
    $display("FELL PASS=======================>>>>");
  k=1;
end else begin
  $display("FELL FAIL=======================>>>>");
  k=0;
end
   
sequence seq3;
  @(posedge clk) $stable(c);
endsequence
property p3;
    seq3;
  endproperty

 assert property (p3) begin
   $display("STABLE PASS=======================>>>>");
  m=1;
end else begin
  $display("STABLE FAIL=======================>>>>");
  m=0;
end

sequence seq4;
  @(posedge clk) $changed(d);
endsequence
property p4;
    seq4;
  endproperty

assert property (p4) begin
  $display("CHANGED PASS=======================>>>>");
  n=1;
end else begin
  $display("CHANGED FAIL=======================>>>>");
  n=0;
end

sequence seq5;
  @(posedge clk) $past(e);
endsequence
property p5;
    seq5;
  endproperty

  assert property (p5) begin
    $display("PAST PASS=======================>>>>");
  o=1;
end else begin
  $display("PAST FAIL=======================>>>>");
  o=0;
end




endmodule
