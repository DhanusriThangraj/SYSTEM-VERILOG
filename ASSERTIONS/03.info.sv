module sample;
  reg a=1,b=1;
  reg y;
  assign y=a^b;
  
  always @(*)begin
  assert(y)   
    $display("expression evaluates to true"); 
       else   
         $info("--------expression evaluates to false--------");   end
  
endmodule

//output

1 module and 0 UDP read.
recompiling module sample
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .337 seconds to compile + .299 seconds to elab + .336 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  4 07:19 2025
"testbench.sv", 12: sample.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'y'
Info: "testbench.sv", 12: sample.unnamed$$_0: at time 0 ns
--------expression evaluates to false--------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Sat Oct  4 07:19:25 2025
Done
