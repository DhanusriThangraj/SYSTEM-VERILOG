module functional_coverage;
  logic [3:0]addr;
  logic [5:0]data;
  logic en;

covergroup name;
  option.per_instance=1;
  option.auto_bin_max=100;


  cp1:coverpoint addr{
    bins b1 = {1,2,3};
    bins b2[] = {[1:10],12};
    bins b3[4]={[0:8]};
    bins b4 = {[1:10],12};
  }
  cp2:coverpoint data{
    bins b1 ={[5:$]};
    bins b2 ={2,4,6};
    bins b3 =default;
  }
  cp3:coverpoint en {bins b1 ={1};}
 
endgroup
name n1 =new();

initial 
  repeat(20)begin
     #1 addr=$random;
        data=$random;
        en=$random;
     
    n1.sample();
    $display("addr=%0d  data=%0d  en=%0d",addr,data,en);
  end
endmodule

//output
run -all;
# KERNEL: addr=4  data=1  en=1
# KERNEL: addr=3  data=13  en=1
# KERNEL: addr=5  data=18  en=1
# KERNEL: addr=13  data=54  en=1
# KERNEL: addr=13  data=12  en=1
# KERNEL: addr=6  data=5  en=0
# KERNEL: addr=5  data=55  en=0
# KERNEL: addr=15  data=50  en=0
# KERNEL: addr=8  data=5  en=0
# KERNEL: addr=13  data=45  en=1
# KERNEL: addr=3  data=10  en=0
# KERNEL: addr=0  data=42  en=1
# KERNEL: addr=6  data=19  en=1
# KERNEL: addr=3  data=43  en=1
# KERNEL: addr=2  data=46  en=1
# KERNEL: addr=15  data=35  en=0
# KERNEL: addr=10  data=60  en=0
# KERNEL: addr=10  data=1  en=0
# KERNEL: addr=8  data=9  en=1
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
# | Host             | 5873882af2f8             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-02-08 05:31         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-02-08 05:31         |
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
# | Cputime  | 0.003 s                         |
# | Seed     | 1                               |
# | Date     | 2026-02-08 05:31                |
# | User     | runner                          |
# | Host     | 5873882af2f8                    |
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
# | Covergroup Coverage |      1 |    92.156% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 92.156%
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
#     | Covergroup Coverage |      1 |    92.156% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 92.156%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |           Covergroup           |   Hits   |  Goal /  |  Status   |
#     |                                |          | At Least |           |
#     ====================================================================
#     | TYPE /functional_coverage/name |  92.156% | 100.000% | Uncovered |
#     ====================================================================
#     | INSTANCE <UNNAMED1>            |  92.156% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1     |  76.470% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin b1                         |        4 |        1 | Covered   |
#     | bin b2[1]                      |        0 |        1 | Zero      |
#     | bin b2[2]                      |        1 |        1 | Covered   |
#     | bin b2[3]                      |        3 |        1 | Covered   |
#     | bin b2[4]                      |        1 |        1 | Covered   |
#     | bin b2[5]                      |        2 |        1 | Covered   |
#     | bin b2[6]                      |        3 |        1 | Covered   |
#     | bin b2[7]                      |        0 |        1 | Zero      |
#     | bin b2[8]                      |        2 |        1 | Covered   |
#     | bin b2[9]                      |        0 |        1 | Zero      |
#     | bin b2[10]                     |        2 |        1 | Covered   |
#     | bin b2[12]                     |        0 |        1 | Zero      |
#     | bin b3[0]                      |        1 |        1 | Covered   |
#     | bin b3[1]                      |        4 |        1 | Covered   |
#     | bin b3[2]                      |        3 |        1 | Covered   |
#     | bin b3[3]                      |        5 |        1 | Covered   |
#     | bin b4                         |       14 |        1 | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2     | 100.000% | 100.000% | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | bin b1                         |       18 |        1 | Covered   |
#     | bin b2                         |        1 |        1 | Covered   |
#     | default bin b3                 |        2 |    -     | Occurred  |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp3     | 100.000% | 100.000% | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | bin b1                         |       11 |        1 | Covered   |
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
# | Covergroup Coverage |      1 |    92.156% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 92.156%
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
#     | Covergroup Coverage |      1 |    92.156% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 92.156%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |           Covergroup           |   Hits   |  Goal /  |  Status   |
#     |                                |          | At Least |           |
#     ====================================================================
#     | TYPE /functional_coverage/name |  92.156% | 100.000% | Uncovered |
#     ====================================================================
#     | INSTANCE <UNNAMED1>            |  92.156% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1     |  76.470% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin b1                         |        4 |        1 | Covered   |
#     | bin b2[1]                      |        0 |        1 | Zero      |
#     | bin b2[2]                      |        1 |        1 | Covered   |
#     | bin b2[3]                      |        3 |        1 | Covered   |
#     | bin b2[4]                      |        1 |        1 | Covered   |
#     | bin b2[5]                      |        2 |        1 | Covered   |
#     | bin b2[6]                      |        3 |        1 | Covered   |
#     | bin b2[7]                      |        0 |        1 | Zero      |
#     | bin b2[8]                      |        2 |        1 | Covered   |
#     | bin b2[9]                      |        0 |        1 | Zero      |
#     | bin b2[10]                     |        2 |        1 | Covered   |
#     | bin b2[12]                     |        0 |        1 | Zero      |
#     | bin b3[0]                      |        1 |        1 | Covered   |
#     | bin b3[1]                      |        4 |        1 | Covered   |
#     | bin b3[2]                      |        3 |        1 | Covered   |
#     | bin b3[3]                      |        5 |        1 | Covered   |
#     | bin b4                         |       14 |        1 | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2     | 100.000% | 100.000% | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | bin b1                         |       18 |        1 | Covered   |
#     | bin b2                         |        1 |        1 | Covered   |
#     | default bin b3                 |        2 |    -     | Occurred  |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp3     | 100.000% | 100.000% | Covered   |
#     |--------------------------------|----------|----------|-----------|
#     | bin b1                         |       11 |        1 | Covered   |
#     ====================================================================
# 
exit
# VSIM: Simulation has finished.
Done
