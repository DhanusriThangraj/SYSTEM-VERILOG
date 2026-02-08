// Code your testbench here
// or browse Examples

module example;
  bit [1:0]mode;
  bit [2:0]go;
  
  bit clk;
  always #20 clk =~clk;

  covergroup cg @(posedge clk);
    option.per_instance=1;

    cp1: coverpoint  mode;
    cp2: coverpoint go[1:0];
    cp3: coverpoint go[0];
    sum : coverpoint (mode + go);//0,1,2,3 + 0,1,2,3,4,5,6,7


  endgroup 
  
  cg c;
initial begin
  c=new();

  for (int i=0; i<5; i++)begin
    @(negedge clk);
    mode=$random;
    go=$random;
    $display("[%0t] mode=0x%0d  go=0x%0d ",$time,mode,go);
  end
end
  initial begin
    #200 $finish;
  end
  
endmodule

//output

run -all;
# KERNEL: [40] mode=0x0  go=0x1 
# KERNEL: [80] mode=0x1  go=0x3 
# KERNEL: [120] mode=0x1  go=0x5 
# KERNEL: [160] mode=0x1  go=0x2 
# RUNTIME: Info: RUNTIME_0068 testbench.sv (34): $finish called.
# KERNEL: Time: 200 ns,  Iteration: 0,  Instance: /example,  Process: @INITIAL#33_2@.
# KERNEL: stopped at time: 200 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
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
# | Host             | e8ac25ff076d             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-02-08 08:16         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-02-08 08:16         |
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
# | Simtime  | 200 ns                          |
# | Cputime  | 0.087 s                         |
# | Seed     | 1                               |
# | Date     | 2026-02-08 08:16                |
# | User     | runner                          |
# | Host     | e8ac25ff076d                    |
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
# | Covergroup Coverage |      1 |    78.125% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 78.125%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# INSTANCE - /example : work.example
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    78.125% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 78.125%
# 
# 
#     COVERGROUP COVERAGE
#     ================================================================
#     |         Covergroup         |   Hits   |  Goal /  |  Status   |
#     |                            |          | At Least |           |
#     ================================================================
#     | TYPE /example/cg           |  78.125% | 100.000% | Uncovered |
#     ================================================================
#     | INSTANCE <UNNAMED1>        |  78.125% | 100.000% | Uncovered |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1 |  50.000% | 100.000% | Uncovered |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        2 |        1 | Covered   |
#     | bin auto[1]                |        3 |        1 | Covered   |
#     | bin auto[2]                |        0 |        1 | Zero      |
#     | bin auto[3]                |        0 |        1 | Zero      |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2 | 100.000% | 100.000% | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        1 |        1 | Covered   |
#     | bin auto[1]                |        2 |        1 | Covered   |
#     | bin auto[2]                |        1 |        1 | Covered   |
#     | bin auto[3]                |        1 |        1 | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp3 | 100.000% | 100.000% | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        2 |        1 | Covered   |
#     | bin auto[1]                |        3 |        1 | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::sum |  62.500% | 100.000% | Uncovered |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        1 |        1 | Covered   |
#     | bin auto[1]                |        1 |        1 | Covered   |
#     | bin auto[2]                |        0 |        1 | Zero      |
#     | bin auto[3]                |        1 |        1 | Covered   |
#     | bin auto[4]                |        1 |        1 | Covered   |
#     | bin auto[5]                |        0 |        1 | Zero      |
#     | bin auto[6]                |        1 |        1 | Covered   |
#     | bin auto[7]                |        0 |        1 | Zero      |
#     ================================================================
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
# | Covergroup Coverage |      1 |    78.125% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 78.125%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# MODULE - work.example
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    78.125% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 78.125%
# 
# 
#     COVERGROUP COVERAGE
#     ================================================================
#     |         Covergroup         |   Hits   |  Goal /  |  Status   |
#     |                            |          | At Least |           |
#     ================================================================
#     | TYPE /example/cg           |  78.125% | 100.000% | Uncovered |
#     ================================================================
#     | INSTANCE <UNNAMED1>        |  78.125% | 100.000% | Uncovered |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1 |  50.000% | 100.000% | Uncovered |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        2 |        1 | Covered   |
#     | bin auto[1]                |        3 |        1 | Covered   |
#     | bin auto[2]                |        0 |        1 | Zero      |
#     | bin auto[3]                |        0 |        1 | Zero      |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2 | 100.000% | 100.000% | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        1 |        1 | Covered   |
#     | bin auto[1]                |        2 |        1 | Covered   |
#     | bin auto[2]                |        1 |        1 | Covered   |
#     | bin auto[3]                |        1 |        1 | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp3 | 100.000% | 100.000% | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        2 |        1 | Covered   |
#     | bin auto[1]                |        3 |        1 | Covered   |
#     |----------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::sum |  62.500% | 100.000% | Uncovered |
#     |----------------------------|----------|----------|-----------|
#     | bin auto[0]                |        1 |        1 | Covered   |
#     | bin auto[1]                |        1 |        1 | Covered   |
#     | bin auto[2]                |        0 |        1 | Zero      |
#     | bin auto[3]                |        1 |        1 | Covered   |
#     | bin auto[4]                |        1 |        1 | Covered   |
#     | bin auto[5]                |        0 |        1 | Zero      |
#     | bin auto[6]                |        1 |        1 | Covered   |
#     | bin auto[7]                |        0 |        1 | Zero      |
#     ================================================================
# 
exit
# VSIM: Simulation has finished.
Done
