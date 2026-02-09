module sample;
  
  bit [2:0]data;
  
  covergroup cg;
    
    option.per_instance =1;
    
    cp1:coverpoint data {
      bins b1 = (5[*3]);  // 3 consecutive 5
      bins b2 = (1=>3[->4:6]=>1); // followed 4 to 6 go to non consecutive 3's followed immediately by a 1;
      bins b3 = (1=>2[=3:6]=>5); //1 followed by 3 to 6 non - concecutive 2s followed sometime latrer by a 5;
      bins b4 = (2[->3:5]); //3 to 5 non-consecutive 2s
      bins b5 = (3[->3:5]);// 3 to 5 non- consecutive 3's
   
    }
  endgroup

initial begin
  cg c1=new();

  repeat (100)begin
    data=$random;
    $display("DATA ===> %0d",data);
    c1.sample();

  end
  
end  
endmodule

// output 
run -all;
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 4
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 0
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 2
# KERNEL: DATA ===> 6
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 1
# KERNEL: DATA ===> 7
# KERNEL: DATA ===> 3
# KERNEL: DATA ===> 5
# KERNEL: DATA ===> 0
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
# | Host             | cf6859f1143e             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-02-09 11:54         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-02-09 11:54         |
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
# | Simtime  | 0 ns                            |
# | Cputime  | 0.002 s                         |
# | Seed     | 1                               |
# | Date     | 2026-02-09 11:54                |
# | User     | runner                          |
# | Host     | cf6859f1143e                    |
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
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 100.000%
# COVERED INSTANCES: 1 / 1
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
#     | Covergroup Coverage |      1 |   100.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      1 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 100.000%
# 
# 
#     COVERGROUP COVERAGE
#     ==============================================================
#     |         Covergroup         |   Hits   |  Goal /  | Status  |
#     |                            |          | At Least |         |
#     ==============================================================
#     | TYPE /sample/cg            | 100.000% | 100.000% | Covered |
#     ==============================================================
#     | INSTANCE <UNNAMED1>        | 100.000% | 100.000% | Covered |
#     |----------------------------|----------|----------|---------|
#     | COVERPOINT <UNNAMED1>::cp1 | 100.000% | 100.000% | Covered |
#     |----------------------------|----------|----------|---------|
#     | bin b1                     |        2 |        1 | Covered |
#     | bin b2                     |        1 |        1 | Covered |
#     | bin b3                     |       10 |        1 | Covered |
#     | bin b4                     |       14 |        1 | Covered |
#     | bin b5                     |        9 |        1 | Covered |
#     ==============================================================
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
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 100.000%
# COVERED DESIGN UNITS: 1 / 1
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
#     | Covergroup Coverage |      1 |   100.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      1 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 100.000%
# 
# 
#     COVERGROUP COVERAGE
#     ==============================================================
#     |         Covergroup         |   Hits   |  Goal /  | Status  |
#     |                            |          | At Least |         |
#     ==============================================================
#     | TYPE /sample/cg            | 100.000% | 100.000% | Covered |
#     ==============================================================
#     | INSTANCE <UNNAMED1>        | 100.000% | 100.000% | Covered |
#     |----------------------------|----------|----------|---------|
#     | COVERPOINT <UNNAMED1>::cp1 | 100.000% | 100.000% | Covered |
#     |----------------------------|----------|----------|---------|
#     | bin b1                     |        2 |        1 | Covered |
#     | bin b2                     |        1 |        1 | Covered |
#     | bin b3                     |       10 |        1 | Covered |
#     | bin b4                     |       14 |        1 | Covered |
#     | bin b5                     |        9 |        1 | Covered |
#     ==============================================================
# 
exit
# VSIM: Simulation has finished.
Done
