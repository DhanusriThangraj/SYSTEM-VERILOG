module sample;
  reg a=1,b=1;
  reg y;
  assign y=a^b;
  
  always @(*)begin
  assert(y)   
    $display("expression evaluates to true"); 
       else   
         $fatal(1,"--------expression evaluates to false--------");   end
  
endmodule

// output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  4 07:14 2025
"testbench.sv", 12: sample.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'y'
Fatal: "testbench.sv", 12: sample.unnamed$$_0: at time 0 ns
--------expression evaluates to false--------
$finish called from file "testbench.sv", line 12.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
Done

//without 1 the output was
Warning-[SVA-IAU] Invalid argument used
testbench.sv, 15
sample, "$fatal("--------expression evaluates to false--------");"
  The first argument ""--------expression evaluates to false--------"" used in
  '$fatal' is not valid. Only integer values 0,1 and 2 are allowed. 
  Refer to SystemVerilog LRM (1800-2012), section 20.10.

Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module sample
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .391 seconds to compile + .392 seconds to elab + .342 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  4 07:17 2025
"testbench.sv", 12: sample.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'y'
Fatal: "testbench.sv", 12: sample.unnamed$$_0: at time 0 ns
--------expression evaluates to false--------
$finish called from file "testbench.sv", line 12.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
Done
