SystemVerilog has a strict priority rule for this:

illegal_bins > ignore_bins > bins

Highest priority wins.



ignore_bins (or illegal_bins) with sequences whose length is not statically bounded.
ignore_bins b1 = (5[*3]);        // ❌
ignore_bins b5 = (3[->3:5]);    // ❌

✅ What is allowed in ignore_bins

Only fixed, fully-determined sequences.

Examples that compile:

ignore_bins ok1 = (5 => 5 => 5);      // fixed length
ignore_bins ok2 = (3 => 3 => 3 => 3); // fixed length
ignore_bins ok3 = (1 => 2 => 5);

You can use repetition in bins.

You cannot use repetition in ignore_bins or illegal_bins.

Statically bounded means:

The simulator can determine the exact number of transitions in the sequence at compile time, without running the simulation.


  ignore_bins, it has higher priority than normal bins.

  //code

  
 module sample;
  
  bit [2:0]data;
  
  covergroup cg;
    
    option.per_instance =1;
    
    cp1:coverpoint data {
      ignore_bins b1 = (5=>5=>5); 
      
      bins b2 = (5=>5=>5); // ignore_bins, it has higher priority than normal bins.
      bins b3 = (4=>5=>6);
      
      ignore_bins b4 = (3=>5=>2);
      
      bins b5[]={1,2,3,4,5,6,9};
      
     illegal_bins b6[]={7,8,9};
      
      
      illegal_bins b7={0};
   
    }
  endgroup

initial begin
  cg c1=new();

  repeat (100)begin
   #1 data=$random;
    $display("DATA ===> %0d",data,$time);
    c1.sample();

  end
  
end

  
  
endmodule

  //output

 run -all;
# KERNEL: DATA ===> 4                   1
# KERNEL: DATA ===> 1                   2
# KERNEL: DATA ===> 1                   3
# KERNEL: DATA ===> 3                   4
# KERNEL: DATA ===> 5                   5
# KERNEL: DATA ===> 5                   6
# KERNEL: DATA ===> 5                   7
# KERNEL: DATA ===> 2                   8
# KERNEL: DATA ===> 1                   9
# KERNEL: DATA ===> 5                  10
# KERNEL: DATA ===> 6                  11
# KERNEL: DATA ===> 5                  12
# KERNEL: DATA ===> 5                  13
# KERNEL: DATA ===> 4                  14
# KERNEL: DATA ===> 1                  15
# KERNEL: DATA ===> 6                  16
# KERNEL: DATA ===> 5                  17
# KERNEL: DATA ===> 2                  18
# KERNEL: DATA ===> 5                  19
# KERNEL: DATA ===> 7                  20
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #19 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 2                  21
# KERNEL: DATA ===> 7                  22
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #21 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 2                  23
# KERNEL: DATA ===> 6                  24
# KERNEL: DATA ===> 0                  25
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #24 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 5                  26
# KERNEL: DATA ===> 4                  27
# KERNEL: DATA ===> 5                  28
# KERNEL: DATA ===> 5                  29
# KERNEL: DATA ===> 5                  30
# KERNEL: DATA ===> 3                  31
# KERNEL: DATA ===> 2                  32
# KERNEL: DATA ===> 0                  33
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #32 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 0                  34
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #33 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 2                  35
# KERNEL: DATA ===> 5                  36
# KERNEL: DATA ===> 6                  37
# KERNEL: DATA ===> 3                  38
# KERNEL: DATA ===> 5                  39
# KERNEL: DATA ===> 3                  40
# KERNEL: DATA ===> 3                  41
# KERNEL: DATA ===> 5                  42
# KERNEL: DATA ===> 2                  43
# KERNEL: DATA ===> 6                  44
# KERNEL: DATA ===> 5                  45
# KERNEL: DATA ===> 7                  46
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #45 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 3                  47
# KERNEL: DATA ===> 2                  48
# KERNEL: DATA ===> 2                  49
# KERNEL: DATA ===> 4                  50
# KERNEL: DATA ===> 2                  51
# KERNEL: DATA ===> 2                  52
# KERNEL: DATA ===> 1                  53
# KERNEL: DATA ===> 0                  54
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #53 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 0                  55
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #54 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 1                  56
# KERNEL: DATA ===> 3                  57
# KERNEL: DATA ===> 6                  58
# KERNEL: DATA ===> 6                  59
# KERNEL: DATA ===> 6                  60
# KERNEL: DATA ===> 4                  61
# KERNEL: DATA ===> 2                  62
# KERNEL: DATA ===> 3                  63
# KERNEL: DATA ===> 1                  64
# KERNEL: DATA ===> 5                  65
# KERNEL: DATA ===> 7                  66
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #65 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 3                  67
# KERNEL: DATA ===> 2                  68
# KERNEL: DATA ===> 6                  69
# KERNEL: DATA ===> 5                  70
# KERNEL: DATA ===> 1                  71
# KERNEL: DATA ===> 1                  72
# KERNEL: DATA ===> 2                  73
# KERNEL: DATA ===> 4                  74
# KERNEL: DATA ===> 7                  75
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #74 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 7                  76
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #75 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 0                  77
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #76 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 7                  78
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #77 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 7                  79
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #78 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 4                  80
# KERNEL: DATA ===> 3                  81
# KERNEL: DATA ===> 1                  82
# KERNEL: DATA ===> 1                  83
# KERNEL: DATA ===> 0                  84
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #83 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 7                  85
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #84 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 1                  86
# KERNEL: DATA ===> 6                  87
# KERNEL: DATA ===> 4                  88
# KERNEL: DATA ===> 2                  89
# KERNEL: DATA ===> 0                  90
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #89 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 7                  91
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #90 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 5                  92
# KERNEL: DATA ===> 2                  93
# KERNEL: DATA ===> 6                  94
# KERNEL: DATA ===> 5                  95
# KERNEL: DATA ===> 1                  96
# KERNEL: DATA ===> 7                  97
# ACDB: Error: ACDB_0012 testbench.sv (58): Illegal bin 'b6[7]' was hit with value '7' at iteration #96 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: DATA ===> 3                  98
# KERNEL: DATA ===> 5                  99
# KERNEL: DATA ===> 0                 100
# ACDB: Error: ACDB_0012 testbench.sv (61): Illegal bin 'b7' was hit with value '0' at iteration #99 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/sample". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp1".
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
acdb save;
acdb report -db fcover.acdb -txt -o cov.txt -verbose
# ACDB: Coverage report "cov.txt" was generated successfully.
exec cat cov.txt;
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++       REPORT INFO       ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# SUMMARY
# ===============================================
# |     Property     |          Value           |
# ===============================================
# | User             | runner                   |
# | Host             | f8e4590aff52             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-02-09 12:56         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-02-09 12:56         |
# | Number of tests  | 1                        |
# ===============================================
# 
# 
# TEST DETAILS
# ==============================================
# | Property |              Value              |
# ==============================================
# | Test     | fcover.acdb:fcover              |
# | Status   | Error                           |
# | Args     | asim +access+r                  |
# | Simtime  | 100 ns                          |
# | Cputime  | 0.021 s                         |
# | Seed     | 1                               |
# | Date     | 2026-02-09 12:56                |
# | User     | runner                          |
# | Host     | f8e4590aff52                    |
# | Host os  | Linux64                         |
# | Tool     | Riviera-PRO 2025.04 (simulator) |
# ==============================================
# 
# 
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++     DESIGN HIERARCHY    ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# CUMULATIVE SUMMARY
# =============================================
# |    Coverage Type    | Weight | Hits/Total |
# =============================================
# | Covergroup Coverage |      1 |    75.000% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 75.000%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# INSTANCE - /sample : work.sample
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    75.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 75.000%
# 
# 
#     COVERGROUP COVERAGE
#     ===============================================================
#     |         Covergroup         |  Hits   |  Goal /  |  Status   |
#     |                            |         | At Least |           |
#     ===============================================================
#     | TYPE /sample/cg            | 75.000% | 100.000% | Uncovered |
#     ===============================================================
#     | INSTANCE <UNNAMED1>        | 75.000% | 100.000% | Uncovered |
#     |----------------------------|---------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1 | 75.000% | 100.000% | Uncovered |
#     |----------------------------|---------|----------|-----------|
#     | bin b5[1]                  |      13 |        1 | Covered   |
#     | bin b5[2]                  |      16 |        1 | Covered   |
#     | bin b5[3]                  |      11 |        1 | Covered   |
#     | bin b5[4]                  |       8 |        1 | Covered   |
#     | bin b5[5]                  |      21 |        1 | Covered   |
#     | bin b5[6]                  |      11 |        1 | Covered   |
#     | illegal bin b6[7]          |      11 |    -     | Occurred  |
#     | illegal bin b7             |       9 |    -     | Occurred  |
#     | bin b2                     |       0 |        1 | Zero      |
#     | bin b3                     |       0 |        1 | Zero      |
#     | ignore bin b1              |       2 |    -     | Occurred  |
#     | ignore bin b4              |       1 |    -     | Occurred  |
#     ===============================================================
# 
# 
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++       DESIGN UNITS      ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# CUMULATIVE SUMMARY
# =============================================
# |    Coverage Type    | Weight | Hits/Total |
# =============================================
# | Covergroup Coverage |      1 |    75.000% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 75.000%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# MODULE - work.sample
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    75.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 75.000%
# 
# 
#     COVERGROUP COVERAGE
#     ===============================================================
#     |         Covergroup         |  Hits   |  Goal /  |  Status   |
#     |                            |         | At Least |           |
#     ===============================================================
#     | TYPE /sample/cg            | 75.000% | 100.000% | Uncovered |
#     ===============================================================
#     | INSTANCE <UNNAMED1>        | 75.000% | 100.000% | Uncovered |
#     |----------------------------|---------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1 | 75.000% | 100.000% | Uncovered |
#     |----------------------------|---------|----------|-----------|
#     | bin b5[1]                  |      13 |        1 | Covered   |
#     | bin b5[2]                  |      16 |        1 | Covered   |
#     | bin b5[3]                  |      11 |        1 | Covered   |
#     | bin b5[4]                  |       8 |        1 | Covered   |
#     | bin b5[5]                  |      21 |        1 | Covered   |
#     | bin b5[6]                  |      11 |        1 | Covered   |
#     | illegal bin b6[7]          |      11 |    -     | Occurred  |
#     | illegal bin b7             |       9 |    -     | Occurred  |
#     | bin b2                     |       0 |        1 | Zero      |
#     | bin b3                     |       0 |        1 | Zero      |
#     | ignore bin b1              |       2 |    -     | Occurred  |
#     | ignore bin b4              |       1 |    -     | Occurred  |
#     ===============================================================
# 
exit
# VSIM: Simulation has finished.
Done
