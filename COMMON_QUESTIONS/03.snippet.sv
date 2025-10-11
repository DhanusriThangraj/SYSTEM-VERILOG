class packet; 
  rand bit[3:0] addr; 
endclass

class packet2 extends packet; 
  constraint addr_range {addr <5;} 
endclass

module const_inhe; 
  initial begin 
    packet pkt1; 
    packet2 pkt2; 
    pkt1=new(); 
    pkt2=new();

repeat (2) begin

pkt1.randomize;
  $display ("\tpkt2:: addr=%0d",pkt2.addr);                        //we cannot randomize the pkt2 so,the output is default value of bit is zero.  
  end
  end 
endmodule


// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 05:13 2025
	pkt2:: addr=0
	pkt2:: addr=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Sat Oct 11 05:13:48 2025
Done

