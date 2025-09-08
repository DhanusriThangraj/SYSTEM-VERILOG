interface inter;
  logic [3:0]a;
  logic [3:0]b;
  logic [3:0]c;
  logic [4:0]sum,result;
  
  modport add( input a,b,
               output sum);
  
  modport sub (
                 input sum,c,
                 output result 
            );
endinterface;

