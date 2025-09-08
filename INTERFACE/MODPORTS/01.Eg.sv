interface inter;
  logic [3:0]a;
  logic [3:0]b;
  logic [4:0]sum;
  
  modport add( input a,b,
               output sum);
endinterface;

