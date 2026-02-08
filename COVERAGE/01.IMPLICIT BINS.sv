// Code your testbench here
// or browse Examples

option.per_instance is a boolean coverage option.

It accepts only:

0  → disabled (merged coverage)
1  → enabled (separate per instance)

Default behavior (option.per_instance = 0)

All instances are merged into one coverage bucket.

You cannot tell which instance hit which bins.

What the tool shows
Covergroup cg : 85% covered


But you had 4 agents. You don’t know which one is weak.

With option.per_instance = 1

Each instance keeps its own coverage database.

Tool shows:

cg[0] : 100%
cg[1] : 40%   ← problem here
cg[2] : 90%
cg[3] : 100%


Now you know exactly where stimulus is missing.

Case 1 — Without .sample() (event-based)
covergroup cg @(posedge clk);
  coverpoint a;
endgroup


Here you are telling tool:

“Every clock edge, check a and record coverage.”

Even if nothing meaningful happened.

If a is garbage at that clock → still sampled. Noise.

  Case 2 — With .sample() (manual control)
covergroup cg;
  coverpoint a;
endgroup

cg c = new();


Right now, tool is waiting.

It will not record anything.

Now you say:

a = 5;
c.sample();   // NOW record coverage


You decide the exact moment.

.sample() = the moment you tell the covergroup: “record coverage now.”

//command for questa sim
// vlib work
// vlog -cover bcst *.sv

// vsim work.functional_coverage -coverage
// run -all

// coverage report -details
// exit

//command for aldec riviera
// vsim +access+r;
//  run -all;
//  acdb save;
//  acdb report -db fcover.acdb -txt -o cov.txt -verbose
//  exec cat cov.txt;
//  exit
module functional_coverage;
  logic [3:0]addr;
  logic [2:0]data;
  logic en;

covergroup name;
  option.per_instance=1;


  cp1:coverpoint addr;
  cp2:coverpoint data;
  cp3:coverpoint en;
 
endgroup
name n1 =new();
  
  
  initial 
    repeat(20)begin
     #1 addr=$random;
        data=$random;
        en=$random;
     
      n1.sample();   // coverage happens exactly here
    $display("addr=%0d  data=%0d  en=%0d",addr,data,en);
  end
endmodule


//output

run -all;
# KERNEL: addr=4  data=1  en=1
# KERNEL: addr=3  data=5  en=1
# KERNEL: addr=5  data=2  en=1
# KERNEL: addr=13  data=6  en=1
# KERNEL: addr=13  data=4  en=1
# KERNEL: addr=6  data=5  en=0
# KERNEL: addr=5  data=7  en=0
# KERNEL: addr=15  data=2  en=0
# KERNEL: addr=8  data=5  en=0
# KERNEL: addr=13  data=5  en=1
# KERNEL: addr=3  data=2  en=0
# KERNEL: addr=0  data=2  en=1
# KERNEL: addr=6  data=3  en=1
# KERNEL: addr=3  data=3  en=1
# KERNEL: addr=2  data=6  en=1
# KERNEL: addr=15  data=3  en=0
# KERNEL: addr=10  data=4  en=0
# KERNEL: addr=10  data=1  en=0
# KERNEL: addr=8  data=1  en=1
# KERNEL: addr=6  data=6  en=0
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
# | Host             | ed71c90ddbc5             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-02-08 03:47         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-02-08 03:47         |
# | Number of tests  | 1                        |
# ===============================================
# 
# 
# TEST DETAILS
# ==============================================
# | Property |              Value              |
# ==============================================
# | Test     | fcover.acdb:fcover              |
# | Status   | Ok                              |
# | Args     | asim +access+r                  |
# | Simtime  | 20 ns                           |
# | Cputime  | 0.001 s                         |
# | Seed     | 1                               |
# | Date     | 2026-02-08 03:47                |
# | User     | runner                          |
# | Host     | ed71c90ddbc5                    |
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
# | Covergroup Coverage |      1 |    83.333% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 83.333%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# INSTANCE - /functional_coverage : work.functional_coverage
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    83.333% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 83.333%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |           Covergroup           |   Hits   |  Goal /  |  Status   |
#     |                                |          | At Least |           |
#     ====================================================================
#     | TYPE /functional_coverage/name |  83.333% | 100.000% | Uncovered |
#     ====================================================================
#     | INSTANCE <UNNAMED1>            |  83.333% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1     |  62.500% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        1 |        1 | Covered   |
#     | bin auto[1]                    |        0 |        1 | Zero      |
#     | bin auto[2]                    |        1 |        1 | Covered   |
#     | bin auto[3]                    |        3 |        1 | Covered   |
#     | bin auto[4]                    |        1 |        1 | Covered   |
#     | bin auto[5]                    |        2 |        1 | Covered   |
#     | bin auto[6]                    |        3 |        1 | Covered   |
#     | bin auto[7]                    |        0 |        1 | Zero      |
#     | bin auto[8]                    |        2 |        1 | Covered   |
#     | bin auto[9]                    |        0 |        1 | Zero      |
#     | bin auto[10]                   |        2 |        1 | Covered   |
#     | bin auto[11]                   |        0 |        1 | Zero      |
#     | bin auto[12]                   |        0 |        1 | Zero      |
#     | bin auto[13]                   |        3 |        1 | Covered   |
#     | bin auto[14]                   |        0 |        1 | Zero      |
#     | bin auto[15]                   |        2 |        1 | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2     |  87.500% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        0 |        1 | Zero      |
#     | bin auto[1]                    |        3 |        1 | Covered   |
#     | bin auto[2]                    |        4 |        1 | Covered   |
#     | bin auto[3]                    |        3 |        1 | Covered   |
#     | bin auto[4]                    |        2 |        1 | Covered   |
#     | bin auto[5]                    |        4 |        1 | Covered   |
#     | bin auto[6]                    |        3 |        1 | Covered   |
#     | bin auto[7]                    |        1 |        1 | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp3     | 100.000% | 100.000% | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        9 |        1 | Covered   |
#     | bin auto[1]                    |       11 |        1 | Covered   |
#     ====================================================================
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
# | Covergroup Coverage |      1 |    83.333% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 83.333%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# MODULE - work.functional_coverage
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    83.333% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 83.333%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |           Covergroup           |   Hits   |  Goal /  |  Status   |
#     |                                |          | At Least |           |
#     ====================================================================
#     | TYPE /functional_coverage/name |  83.333% | 100.000% | Uncovered |
#     ====================================================================
#     | INSTANCE <UNNAMED1>            |  83.333% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1     |  62.500% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        1 |        1 | Covered   |
#     | bin auto[1]                    |        0 |        1 | Zero      |
#     | bin auto[2]                    |        1 |        1 | Covered   |
#     | bin auto[3]                    |        3 |        1 | Covered   |
#     | bin auto[4]                    |        1 |        1 | Covered   |
#     | bin auto[5]                    |        2 |        1 | Covered   |
#     | bin auto[6]                    |        3 |        1 | Covered   |
#     | bin auto[7]                    |        0 |        1 | Zero      |
#     | bin auto[8]                    |        2 |        1 | Covered   |
#     | bin auto[9]                    |        0 |        1 | Zero      |
#     | bin auto[10]                   |        2 |        1 | Covered   |
#     | bin auto[11]                   |        0 |        1 | Zero      |
#     | bin auto[12]                   |        0 |        1 | Zero      |
#     | bin auto[13]                   |        3 |        1 | Covered   |
#     | bin auto[14]                   |        0 |        1 | Zero      |
#     | bin auto[15]                   |        2 |        1 | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2     |  87.500% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        0 |        1 | Zero      |
#     | bin auto[1]                    |        3 |        1 | Covered   |
#     | bin auto[2]                    |        4 |        1 | Covered   |
#     | bin auto[3]                    |        3 |        1 | Covered   |
#     | bin auto[4]                    |        2 |        1 | Covered   |
#     | bin auto[5]                    |        4 |        1 | Covered   |
#     | bin auto[6]                    |        3 |        1 | Covered   |
#     | bin auto[7]                    |        1 |        1 | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp3     | 100.000% | 100.000% | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        9 |        1 | Covered   |
#     | bin auto[1]                    |       11 |        1 | Covered   |
#     ====================================================================
# 
exit
# VSIM: Simulation has finished.
Done
