By default: 64 bins max.
Now you allow: up to 256 bins.
Default (64)

64 bins

4 values per bin

With option.auto_bin_max = 256

256 bins

1 value per bin

You get finer coverage resolution.

If values exceed 256
logic [9:0] addr;  // 1024 values


Bins = 256

Values per bin = 1024 / 256 = 4

Still grouped, but less grouping than befor.
===========================================================================================
module functional_coverage;
  logic [7:0]addr;
  logic [3:0]data;
  logic en;

covergroup name;
  option.per_instance=1;
  
  option.auto_bin_max=256;

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
     
    n1.sample();
    $display("addr=%0d  data=%0d  en=%0d",addr,data,en);
  end
endmodule

//output

run -all;
# KERNEL: addr=36  data=1  en=1
# KERNEL: addr=99  data=13  en=1
# KERNEL: addr=101  data=2  en=1
# KERNEL: addr=13  data=6  en=1
# KERNEL: addr=237  data=12  en=1
# KERNEL: addr=198  data=5  en=0
# KERNEL: addr=229  data=7  en=0
# KERNEL: addr=143  data=2  en=0
# KERNEL: addr=232  data=5  en=0
# KERNEL: addr=189  data=13  en=1
# KERNEL: addr=99  data=10  en=0
# KERNEL: addr=32  data=10  en=1
# KERNEL: addr=150  data=3  en=1
# KERNEL: addr=83  data=11  en=1
# KERNEL: addr=2  data=14  en=1
# KERNEL: addr=207  data=3  en=0
# KERNEL: addr=202  data=12  en=0
# KERNEL: addr=138  data=1  en=0
# KERNEL: addr=120  data=9  en=1
# KERNEL: addr=182  data=6  en=0
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
# | Host             | 0d930304bd9f             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-02-08 04:51         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-02-08 04:51         |
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
# | Date     | 2026-02-08 04:51                |
# | User     | runner                          |
# | Host     | 0d930304bd9f                    |
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
# | Covergroup Coverage |      1 |    60.807% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 60.807%
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
#     | Covergroup Coverage |      1 |    60.807% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 60.807%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |           Covergroup           |   Hits   |  Goal /  |  Status   |
#     |                                |          | At Least |           |
#     ====================================================================
#     | TYPE /functional_coverage/name |  60.807% | 100.000% | Uncovered |
#     ====================================================================
#     | INSTANCE <UNNAMED1>            |  60.807% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1     |   7.421% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        0 |        1 | Zero      |
#     | bin auto[1]                    |        0 |        1 | Zero      |
#     | bin auto[2]                    |        1 |        1 | Covered   |
#     | bin auto[3]                    |        0 |        1 | Zero      |
#     | bin auto[4]                    |        0 |        1 | Zero      |
#     | bin auto[5]                    |        0 |        1 | Zero      |
#     | bin auto[6]                    |        0 |        1 | Zero      |
#     | bin auto[7]                    |        0 |        1 | Zero      |
#     | bin auto[8]                    |        0 |        1 | Zero      |
#     | bin auto[9]                    |        0 |        1 | Zero      |
#     | bin auto[10]                   |        0 |        1 | Zero      |
#     | bin auto[11]                   |        0 |        1 | Zero      |
#     | bin auto[12]                   |        0 |        1 | Zero      |
#     | bin auto[13]                   |        1 |        1 | Covered   |
#     | bin auto[14]                   |        0 |        1 | Zero      |
#     | bin auto[15]                   |        0 |        1 | Zero      |
#     | bin auto[16]                   |        0 |        1 | Zero      |
#     | bin auto[17]                   |        0 |        1 | Zero      |
#     | bin auto[18]                   |        0 |        1 | Zero      |
#     | bin auto[19]                   |        0 |        1 | Zero      |
#     | bin auto[20]                   |        0 |        1 | Zero      |
#     | bin auto[21]                   |        0 |        1 | Zero      |
#     | bin auto[22]                   |        0 |        1 | Zero      |
#     | bin auto[23]                   |        0 |        1 | Zero      |
#     | bin auto[24]                   |        0 |        1 | Zero      |
#     | bin auto[25]                   |        0 |        1 | Zero      |
#     | bin auto[26]                   |        0 |        1 | Zero      |
#     | bin auto[27]                   |        0 |        1 | Zero      |
#     | bin auto[28]                   |        0 |        1 | Zero      |
#     | bin auto[29]                   |        0 |        1 | Zero      |
#     | bin auto[30]                   |        0 |        1 | Zero      |
#     | bin auto[31]                   |        0 |        1 | Zero      |
#     | bin auto[32]                   |        1 |        1 | Covered   |
#     | bin auto[33]                   |        0 |        1 | Zero      |
#     | bin auto[34]                   |        0 |        1 | Zero      |
#     | bin auto[35]                   |        0 |        1 | Zero      |
#     | bin auto[36]                   |        1 |        1 | Covered   |
#     | bin auto[37]                   |        0 |        1 | Zero      |
#     | bin auto[38]                   |        0 |        1 | Zero      |
#     | bin auto[39]                   |        0 |        1 | Zero      |
#     | bin auto[40]                   |        0 |        1 | Zero      |
#     | bin auto[41]                   |        0 |        1 | Zero      |
#     | bin auto[42]                   |        0 |        1 | Zero      |
#     | bin auto[43]                   |        0 |        1 | Zero      |
#     | bin auto[44]                   |        0 |        1 | Zero      |
#     | bin auto[45]                   |        0 |        1 | Zero      |
#     | bin auto[46]                   |        0 |        1 | Zero      |
#     | bin auto[47]                   |        0 |        1 | Zero      |
#     | bin auto[48]                   |        0 |        1 | Zero      |
#     | bin auto[49]                   |        0 |        1 | Zero      |
#     | bin auto[50]                   |        0 |        1 | Zero      |
#     | bin auto[51]                   |        0 |        1 | Zero      |
#     | bin auto[52]                   |        0 |        1 | Zero      |
#     | bin auto[53]                   |        0 |        1 | Zero      |
#     | bin auto[54]                   |        0 |        1 | Zero      |
#     | bin auto[55]                   |        0 |        1 | Zero      |
#     | bin auto[56]                   |        0 |        1 | Zero      |
#     | bin auto[57]                   |        0 |        1 | Zero      |
#     | bin auto[58]                   |        0 |        1 | Zero      |
#     | bin auto[59]                   |        0 |        1 | Zero      |
#     | bin auto[60]                   |        0 |        1 | Zero      |
#     | bin auto[61]                   |        0 |        1 | Zero      |
#     | bin auto[62]                   |        0 |        1 | Zero      |
#     | bin auto[63]                   |        0 |        1 | Zero      |
#     | bin auto[64]                   |        0 |        1 | Zero      |
#     | bin auto[65]                   |        0 |        1 | Zero      |
#     | bin auto[66]                   |        0 |        1 | Zero      |
#     | bin auto[67]                   |        0 |        1 | Zero      |
#     | bin auto[68]                   |        0 |        1 | Zero      |
#     | bin auto[69]                   |        0 |        1 | Zero      |
#     | bin auto[70]                   |        0 |        1 | Zero      |
#     | bin auto[71]                   |        0 |        1 | Zero      |
#     | bin auto[72]                   |        0 |        1 | Zero      |
#     | bin auto[73]                   |        0 |        1 | Zero      |
#     | bin auto[74]                   |        0 |        1 | Zero      |
#     | bin auto[75]                   |        0 |        1 | Zero      |
#     | bin auto[76]                   |        0 |        1 | Zero      |
#     | bin auto[77]                   |        0 |        1 | Zero      |
#     | bin auto[78]                   |        0 |        1 | Zero      |
#     | bin auto[79]                   |        0 |        1 | Zero      |
#     | bin auto[80]                   |        0 |        1 | Zero      |
#     | bin auto[81]                   |        0 |        1 | Zero      |
#     | bin auto[82]                   |        0 |        1 | Zero      |
#     | bin auto[83]                   |        1 |        1 | Covered   |
#     | bin auto[84]                   |        0 |        1 | Zero      |
#     | bin auto[85]                   |        0 |        1 | Zero      |
#     | bin auto[86]                   |        0 |        1 | Zero      |
#     | bin auto[87]                   |        0 |        1 | Zero      |
#     | bin auto[88]                   |        0 |        1 | Zero      |
#     | bin auto[89]                   |        0 |        1 | Zero      |
#     | bin auto[90]                   |        0 |        1 | Zero      |
#     | bin auto[91]                   |        0 |        1 | Zero      |
#     | bin auto[92]                   |        0 |        1 | Zero      |
#     | bin auto[93]                   |        0 |        1 | Zero      |
#     | bin auto[94]                   |        0 |        1 | Zero      |
#     | bin auto[95]                   |        0 |        1 | Zero      |
#     | bin auto[96]                   |        0 |        1 | Zero      |
#     | bin auto[97]                   |        0 |        1 | Zero      |
#     | bin auto[98]                   |        0 |        1 | Zero      |
#     | bin auto[99]                   |        2 |        1 | Covered   |
#     | bin auto[100]                  |        0 |        1 | Zero      |
#     | bin auto[101]                  |        1 |        1 | Covered   |
#     | bin auto[102]                  |        0 |        1 | Zero      |
#     | bin auto[103]                  |        0 |        1 | Zero      |
#     | bin auto[104]                  |        0 |        1 | Zero      |
#     | bin auto[105]                  |        0 |        1 | Zero      |
#     | bin auto[106]                  |        0 |        1 | Zero      |
#     | bin auto[107]                  |        0 |        1 | Zero      |
#     | bin auto[108]                  |        0 |        1 | Zero      |
#     | bin auto[109]                  |        0 |        1 | Zero      |
#     | bin auto[110]                  |        0 |        1 | Zero      |
#     | bin auto[111]                  |        0 |        1 | Zero      |
#     | bin auto[112]                  |        0 |        1 | Zero      |
#     | bin auto[113]                  |        0 |        1 | Zero      |
#     | bin auto[114]                  |        0 |        1 | Zero      |
#     | bin auto[115]                  |        0 |        1 | Zero      |
#     | bin auto[116]                  |        0 |        1 | Zero      |
#     | bin auto[117]                  |        0 |        1 | Zero      |
#     | bin auto[118]                  |        0 |        1 | Zero      |
#     | bin auto[119]                  |        0 |        1 | Zero      |
#     | bin auto[120]                  |        1 |        1 | Covered   |
#     | bin auto[121]                  |        0 |        1 | Zero      |
#     | bin auto[122]                  |        0 |        1 | Zero      |
#     | bin auto[123]                  |        0 |        1 | Zero      |
#     | bin auto[124]                  |        0 |        1 | Zero      |
#     | bin auto[125]                  |        0 |        1 | Zero      |
#     | bin auto[126]                  |        0 |        1 | Zero      |
#     | bin auto[127]                  |        0 |        1 | Zero      |
#     | bin auto[128]                  |        0 |        1 | Zero      |
#     | bin auto[129]                  |        0 |        1 | Zero      |
#     | bin auto[130]                  |        0 |        1 | Zero      |
#     | bin auto[131]                  |        0 |        1 | Zero      |
#     | bin auto[132]                  |        0 |        1 | Zero      |
#     | bin auto[133]                  |        0 |        1 | Zero      |
#     | bin auto[134]                  |        0 |        1 | Zero      |
#     | bin auto[135]                  |        0 |        1 | Zero      |
#     | bin auto[136]                  |        0 |        1 | Zero      |
#     | bin auto[137]                  |        0 |        1 | Zero      |
#     | bin auto[138]                  |        1 |        1 | Covered   |
#     | bin auto[139]                  |        0 |        1 | Zero      |
#     | bin auto[140]                  |        0 |        1 | Zero      |
#     | bin auto[141]                  |        0 |        1 | Zero      |
#     | bin auto[142]                  |        0 |        1 | Zero      |
#     | bin auto[143]                  |        1 |        1 | Covered   |
#     | bin auto[144]                  |        0 |        1 | Zero      |
#     | bin auto[145]                  |        0 |        1 | Zero      |
#     | bin auto[146]                  |        0 |        1 | Zero      |
#     | bin auto[147]                  |        0 |        1 | Zero      |
#     | bin auto[148]                  |        0 |        1 | Zero      |
#     | bin auto[149]                  |        0 |        1 | Zero      |
#     | bin auto[150]                  |        1 |        1 | Covered   |
#     | bin auto[151]                  |        0 |        1 | Zero      |
#     | bin auto[152]                  |        0 |        1 | Zero      |
#     | bin auto[153]                  |        0 |        1 | Zero      |
#     | bin auto[154]                  |        0 |        1 | Zero      |
#     | bin auto[155]                  |        0 |        1 | Zero      |
#     | bin auto[156]                  |        0 |        1 | Zero      |
#     | bin auto[157]                  |        0 |        1 | Zero      |
#     | bin auto[158]                  |        0 |        1 | Zero      |
#     | bin auto[159]                  |        0 |        1 | Zero      |
#     | bin auto[160]                  |        0 |        1 | Zero      |
#     | bin auto[161]                  |        0 |        1 | Zero      |
#     | bin auto[162]                  |        0 |        1 | Zero      |
#     | bin auto[163]                  |        0 |        1 | Zero      |
#     | bin auto[164]                  |        0 |        1 | Zero      |
#     | bin auto[165]                  |        0 |        1 | Zero      |
#     | bin auto[166]                  |        0 |        1 | Zero      |
#     | bin auto[167]                  |        0 |        1 | Zero      |
#     | bin auto[168]                  |        0 |        1 | Zero      |
#     | bin auto[169]                  |        0 |        1 | Zero      |
#     | bin auto[170]                  |        0 |        1 | Zero      |
#     | bin auto[171]                  |        0 |        1 | Zero      |
#     | bin auto[172]                  |        0 |        1 | Zero      |
#     | bin auto[173]                  |        0 |        1 | Zero      |
#     | bin auto[174]                  |        0 |        1 | Zero      |
#     | bin auto[175]                  |        0 |        1 | Zero      |
#     | bin auto[176]                  |        0 |        1 | Zero      |
#     | bin auto[177]                  |        0 |        1 | Zero      |
#     | bin auto[178]                  |        0 |        1 | Zero      |
#     | bin auto[179]                  |        0 |        1 | Zero      |
#     | bin auto[180]                  |        0 |        1 | Zero      |
#     | bin auto[181]                  |        0 |        1 | Zero      |
#     | bin auto[182]                  |        1 |        1 | Covered   |
#     | bin auto[183]                  |        0 |        1 | Zero      |
#     | bin auto[184]                  |        0 |        1 | Zero      |
#     | bin auto[185]                  |        0 |        1 | Zero      |
#     | bin auto[186]                  |        0 |        1 | Zero      |
#     | bin auto[187]                  |        0 |        1 | Zero      |
#     | bin auto[188]                  |        0 |        1 | Zero      |
#     | bin auto[189]                  |        1 |        1 | Covered   |
#     | bin auto[190]                  |        0 |        1 | Zero      |
#     | bin auto[191]                  |        0 |        1 | Zero      |
#     | bin auto[192]                  |        0 |        1 | Zero      |
#     | bin auto[193]                  |        0 |        1 | Zero      |
#     | bin auto[194]                  |        0 |        1 | Zero      |
#     | bin auto[195]                  |        0 |        1 | Zero      |
#     | bin auto[196]                  |        0 |        1 | Zero      |
#     | bin auto[197]                  |        0 |        1 | Zero      |
#     | bin auto[198]                  |        1 |        1 | Covered   |
#     | bin auto[199]                  |        0 |        1 | Zero      |
#     | bin auto[200]                  |        0 |        1 | Zero      |
#     | bin auto[201]                  |        0 |        1 | Zero      |
#     | bin auto[202]                  |        1 |        1 | Covered   |
#     | bin auto[203]                  |        0 |        1 | Zero      |
#     | bin auto[204]                  |        0 |        1 | Zero      |
#     | bin auto[205]                  |        0 |        1 | Zero      |
#     | bin auto[206]                  |        0 |        1 | Zero      |
#     | bin auto[207]                  |        1 |        1 | Covered   |
#     | bin auto[208]                  |        0 |        1 | Zero      |
#     | bin auto[209]                  |        0 |        1 | Zero      |
#     | bin auto[210]                  |        0 |        1 | Zero      |
#     | bin auto[211]                  |        0 |        1 | Zero      |
#     | bin auto[212]                  |        0 |        1 | Zero      |
#     | bin auto[213]                  |        0 |        1 | Zero      |
#     | bin auto[214]                  |        0 |        1 | Zero      |
#     | bin auto[215]                  |        0 |        1 | Zero      |
#     | bin auto[216]                  |        0 |        1 | Zero      |
#     | bin auto[217]                  |        0 |        1 | Zero      |
#     | bin auto[218]                  |        0 |        1 | Zero      |
#     | bin auto[219]                  |        0 |        1 | Zero      |
#     | bin auto[220]                  |        0 |        1 | Zero      |
#     | bin auto[221]                  |        0 |        1 | Zero      |
#     | bin auto[222]                  |        0 |        1 | Zero      |
#     | bin auto[223]                  |        0 |        1 | Zero      |
#     | bin auto[224]                  |        0 |        1 | Zero      |
#     | bin auto[225]                  |        0 |        1 | Zero      |
#     | bin auto[226]                  |        0 |        1 | Zero      |
#     | bin auto[227]                  |        0 |        1 | Zero      |
#     | bin auto[228]                  |        0 |        1 | Zero      |
#     | bin auto[229]                  |        1 |        1 | Covered   |
#     | bin auto[230]                  |        0 |        1 | Zero      |
#     | bin auto[231]                  |        0 |        1 | Zero      |
#     | bin auto[232]                  |        1 |        1 | Covered   |
#     | bin auto[233]                  |        0 |        1 | Zero      |
#     | bin auto[234]                  |        0 |        1 | Zero      |
#     | bin auto[235]                  |        0 |        1 | Zero      |
#     | bin auto[236]                  |        0 |        1 | Zero      |
#     | bin auto[237]                  |        1 |        1 | Covered   |
#     | bin auto[238]                  |        0 |        1 | Zero      |
#     | bin auto[239]                  |        0 |        1 | Zero      |
#     | bin auto[240]                  |        0 |        1 | Zero      |
#     | bin auto[241]                  |        0 |        1 | Zero      |
#     | bin auto[242]                  |        0 |        1 | Zero      |
#     | bin auto[243]                  |        0 |        1 | Zero      |
#     | bin auto[244]                  |        0 |        1 | Zero      |
#     | bin auto[245]                  |        0 |        1 | Zero      |
#     | bin auto[246]                  |        0 |        1 | Zero      |
#     | bin auto[247]                  |        0 |        1 | Zero      |
#     | bin auto[248]                  |        0 |        1 | Zero      |
#     | bin auto[249]                  |        0 |        1 | Zero      |
#     | bin auto[250]                  |        0 |        1 | Zero      |
#     | bin auto[251]                  |        0 |        1 | Zero      |
#     | bin auto[252]                  |        0 |        1 | Zero      |
#     | bin auto[253]                  |        0 |        1 | Zero      |
#     | bin auto[254]                  |        0 |        1 | Zero      |
#     | bin auto[255]                  |        0 |        1 | Zero      |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2     |  75.000% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        0 |        1 | Zero      |
#     | bin auto[1]                    |        2 |        1 | Covered   |
#     | bin auto[2]                    |        2 |        1 | Covered   |
#     | bin auto[3]                    |        2 |        1 | Covered   |
#     | bin auto[4]                    |        0 |        1 | Zero      |
#     | bin auto[5]                    |        2 |        1 | Covered   |
#     | bin auto[6]                    |        2 |        1 | Covered   |
#     | bin auto[7]                    |        1 |        1 | Covered   |
#     | bin auto[8]                    |        0 |        1 | Zero      |
#     | bin auto[9]                    |        1 |        1 | Covered   |
#     | bin auto[10]                   |        2 |        1 | Covered   |
#     | bin auto[11]                   |        1 |        1 | Covered   |
#     | bin auto[12]                   |        2 |        1 | Covered   |
#     | bin auto[13]                   |        2 |        1 | Covered   |
#     | bin auto[14]                   |        1 |        1 | Covered   |
#     | bin auto[15]                   |        0 |        1 | Zero      |
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
# | Covergroup Coverage |      1 |    60.807% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 60.807%
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
#     | Covergroup Coverage |      1 |    60.807% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 60.807%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |           Covergroup           |   Hits   |  Goal /  |  Status   |
#     |                                |          | At Least |           |
#     ====================================================================
#     | TYPE /functional_coverage/name |  60.807% | 100.000% | Uncovered |
#     ====================================================================
#     | INSTANCE <UNNAMED1>            |  60.807% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp1     |   7.421% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        0 |        1 | Zero      |
#     | bin auto[1]                    |        0 |        1 | Zero      |
#     | bin auto[2]                    |        1 |        1 | Covered   |
#     | bin auto[3]                    |        0 |        1 | Zero      |
#     | bin auto[4]                    |        0 |        1 | Zero      |
#     | bin auto[5]                    |        0 |        1 | Zero      |
#     | bin auto[6]                    |        0 |        1 | Zero      |
#     | bin auto[7]                    |        0 |        1 | Zero      |
#     | bin auto[8]                    |        0 |        1 | Zero      |
#     | bin auto[9]                    |        0 |        1 | Zero      |
#     | bin auto[10]                   |        0 |        1 | Zero      |
#     | bin auto[11]                   |        0 |        1 | Zero      |
#     | bin auto[12]                   |        0 |        1 | Zero      |
#     | bin auto[13]                   |        1 |        1 | Covered   |
#     | bin auto[14]                   |        0 |        1 | Zero      |
#     | bin auto[15]                   |        0 |        1 | Zero      |
#     | bin auto[16]                   |        0 |        1 | Zero      |
#     | bin auto[17]                   |        0 |        1 | Zero      |
#     | bin auto[18]                   |        0 |        1 | Zero      |
#     | bin auto[19]                   |        0 |        1 | Zero      |
#     | bin auto[20]                   |        0 |        1 | Zero      |
#     | bin auto[21]                   |        0 |        1 | Zero      |
#     | bin auto[22]                   |        0 |        1 | Zero      |
#     | bin auto[23]                   |        0 |        1 | Zero      |
#     | bin auto[24]                   |        0 |        1 | Zero      |
#     | bin auto[25]                   |        0 |        1 | Zero      |
#     | bin auto[26]                   |        0 |        1 | Zero      |
#     | bin auto[27]                   |        0 |        1 | Zero      |
#     | bin auto[28]                   |        0 |        1 | Zero      |
#     | bin auto[29]                   |        0 |        1 | Zero      |
#     | bin auto[30]                   |        0 |        1 | Zero      |
#     | bin auto[31]                   |        0 |        1 | Zero      |
#     | bin auto[32]                   |        1 |        1 | Covered   |
#     | bin auto[33]                   |        0 |        1 | Zero      |
#     | bin auto[34]                   |        0 |        1 | Zero      |
#     | bin auto[35]                   |        0 |        1 | Zero      |
#     | bin auto[36]                   |        1 |        1 | Covered   |
#     | bin auto[37]                   |        0 |        1 | Zero      |
#     | bin auto[38]                   |        0 |        1 | Zero      |
#     | bin auto[39]                   |        0 |        1 | Zero      |
#     | bin auto[40]                   |        0 |        1 | Zero      |
#     | bin auto[41]                   |        0 |        1 | Zero      |
#     | bin auto[42]                   |        0 |        1 | Zero      |
#     | bin auto[43]                   |        0 |        1 | Zero      |
#     | bin auto[44]                   |        0 |        1 | Zero      |
#     | bin auto[45]                   |        0 |        1 | Zero      |
#     | bin auto[46]                   |        0 |        1 | Zero      |
#     | bin auto[47]                   |        0 |        1 | Zero      |
#     | bin auto[48]                   |        0 |        1 | Zero      |
#     | bin auto[49]                   |        0 |        1 | Zero      |
#     | bin auto[50]                   |        0 |        1 | Zero      |
#     | bin auto[51]                   |        0 |        1 | Zero      |
#     | bin auto[52]                   |        0 |        1 | Zero      |
#     | bin auto[53]                   |        0 |        1 | Zero      |
#     | bin auto[54]                   |        0 |        1 | Zero      |
#     | bin auto[55]                   |        0 |        1 | Zero      |
#     | bin auto[56]                   |        0 |        1 | Zero      |
#     | bin auto[57]                   |        0 |        1 | Zero      |
#     | bin auto[58]                   |        0 |        1 | Zero      |
#     | bin auto[59]                   |        0 |        1 | Zero      |
#     | bin auto[60]                   |        0 |        1 | Zero      |
#     | bin auto[61]                   |        0 |        1 | Zero      |
#     | bin auto[62]                   |        0 |        1 | Zero      |
#     | bin auto[63]                   |        0 |        1 | Zero      |
#     | bin auto[64]                   |        0 |        1 | Zero      |
#     | bin auto[65]                   |        0 |        1 | Zero      |
#     | bin auto[66]                   |        0 |        1 | Zero      |
#     | bin auto[67]                   |        0 |        1 | Zero      |
#     | bin auto[68]                   |        0 |        1 | Zero      |
#     | bin auto[69]                   |        0 |        1 | Zero      |
#     | bin auto[70]                   |        0 |        1 | Zero      |
#     | bin auto[71]                   |        0 |        1 | Zero      |
#     | bin auto[72]                   |        0 |        1 | Zero      |
#     | bin auto[73]                   |        0 |        1 | Zero      |
#     | bin auto[74]                   |        0 |        1 | Zero      |
#     | bin auto[75]                   |        0 |        1 | Zero      |
#     | bin auto[76]                   |        0 |        1 | Zero      |
#     | bin auto[77]                   |        0 |        1 | Zero      |
#     | bin auto[78]                   |        0 |        1 | Zero      |
#     | bin auto[79]                   |        0 |        1 | Zero      |
#     | bin auto[80]                   |        0 |        1 | Zero      |
#     | bin auto[81]                   |        0 |        1 | Zero      |
#     | bin auto[82]                   |        0 |        1 | Zero      |
#     | bin auto[83]                   |        1 |        1 | Covered   |
#     | bin auto[84]                   |        0 |        1 | Zero      |
#     | bin auto[85]                   |        0 |        1 | Zero      |
#     | bin auto[86]                   |        0 |        1 | Zero      |
#     | bin auto[87]                   |        0 |        1 | Zero      |
#     | bin auto[88]                   |        0 |        1 | Zero      |
#     | bin auto[89]                   |        0 |        1 | Zero      |
#     | bin auto[90]                   |        0 |        1 | Zero      |
#     | bin auto[91]                   |        0 |        1 | Zero      |
#     | bin auto[92]                   |        0 |        1 | Zero      |
#     | bin auto[93]                   |        0 |        1 | Zero      |
#     | bin auto[94]                   |        0 |        1 | Zero      |
#     | bin auto[95]                   |        0 |        1 | Zero      |
#     | bin auto[96]                   |        0 |        1 | Zero      |
#     | bin auto[97]                   |        0 |        1 | Zero      |
#     | bin auto[98]                   |        0 |        1 | Zero      |
#     | bin auto[99]                   |        2 |        1 | Covered   |
#     | bin auto[100]                  |        0 |        1 | Zero      |
#     | bin auto[101]                  |        1 |        1 | Covered   |
#     | bin auto[102]                  |        0 |        1 | Zero      |
#     | bin auto[103]                  |        0 |        1 | Zero      |
#     | bin auto[104]                  |        0 |        1 | Zero      |
#     | bin auto[105]                  |        0 |        1 | Zero      |
#     | bin auto[106]                  |        0 |        1 | Zero      |
#     | bin auto[107]                  |        0 |        1 | Zero      |
#     | bin auto[108]                  |        0 |        1 | Zero      |
#     | bin auto[109]                  |        0 |        1 | Zero      |
#     | bin auto[110]                  |        0 |        1 | Zero      |
#     | bin auto[111]                  |        0 |        1 | Zero      |
#     | bin auto[112]                  |        0 |        1 | Zero      |
#     | bin auto[113]                  |        0 |        1 | Zero      |
#     | bin auto[114]                  |        0 |        1 | Zero      |
#     | bin auto[115]                  |        0 |        1 | Zero      |
#     | bin auto[116]                  |        0 |        1 | Zero      |
#     | bin auto[117]                  |        0 |        1 | Zero      |
#     | bin auto[118]                  |        0 |        1 | Zero      |
#     | bin auto[119]                  |        0 |        1 | Zero      |
#     | bin auto[120]                  |        1 |        1 | Covered   |
#     | bin auto[121]                  |        0 |        1 | Zero      |
#     | bin auto[122]                  |        0 |        1 | Zero      |
#     | bin auto[123]                  |        0 |        1 | Zero      |
#     | bin auto[124]                  |        0 |        1 | Zero      |
#     | bin auto[125]                  |        0 |        1 | Zero      |
#     | bin auto[126]                  |        0 |        1 | Zero      |
#     | bin auto[127]                  |        0 |        1 | Zero      |
#     | bin auto[128]                  |        0 |        1 | Zero      |
#     | bin auto[129]                  |        0 |        1 | Zero      |
#     | bin auto[130]                  |        0 |        1 | Zero      |
#     | bin auto[131]                  |        0 |        1 | Zero      |
#     | bin auto[132]                  |        0 |        1 | Zero      |
#     | bin auto[133]                  |        0 |        1 | Zero      |
#     | bin auto[134]                  |        0 |        1 | Zero      |
#     | bin auto[135]                  |        0 |        1 | Zero      |
#     | bin auto[136]                  |        0 |        1 | Zero      |
#     | bin auto[137]                  |        0 |        1 | Zero      |
#     | bin auto[138]                  |        1 |        1 | Covered   |
#     | bin auto[139]                  |        0 |        1 | Zero      |
#     | bin auto[140]                  |        0 |        1 | Zero      |
#     | bin auto[141]                  |        0 |        1 | Zero      |
#     | bin auto[142]                  |        0 |        1 | Zero      |
#     | bin auto[143]                  |        1 |        1 | Covered   |
#     | bin auto[144]                  |        0 |        1 | Zero      |
#     | bin auto[145]                  |        0 |        1 | Zero      |
#     | bin auto[146]                  |        0 |        1 | Zero      |
#     | bin auto[147]                  |        0 |        1 | Zero      |
#     | bin auto[148]                  |        0 |        1 | Zero      |
#     | bin auto[149]                  |        0 |        1 | Zero      |
#     | bin auto[150]                  |        1 |        1 | Covered   |
#     | bin auto[151]                  |        0 |        1 | Zero      |
#     | bin auto[152]                  |        0 |        1 | Zero      |
#     | bin auto[153]                  |        0 |        1 | Zero      |
#     | bin auto[154]                  |        0 |        1 | Zero      |
#     | bin auto[155]                  |        0 |        1 | Zero      |
#     | bin auto[156]                  |        0 |        1 | Zero      |
#     | bin auto[157]                  |        0 |        1 | Zero      |
#     | bin auto[158]                  |        0 |        1 | Zero      |
#     | bin auto[159]                  |        0 |        1 | Zero      |
#     | bin auto[160]                  |        0 |        1 | Zero      |
#     | bin auto[161]                  |        0 |        1 | Zero      |
#     | bin auto[162]                  |        0 |        1 | Zero      |
#     | bin auto[163]                  |        0 |        1 | Zero      |
#     | bin auto[164]                  |        0 |        1 | Zero      |
#     | bin auto[165]                  |        0 |        1 | Zero      |
#     | bin auto[166]                  |        0 |        1 | Zero      |
#     | bin auto[167]                  |        0 |        1 | Zero      |
#     | bin auto[168]                  |        0 |        1 | Zero      |
#     | bin auto[169]                  |        0 |        1 | Zero      |
#     | bin auto[170]                  |        0 |        1 | Zero      |
#     | bin auto[171]                  |        0 |        1 | Zero      |
#     | bin auto[172]                  |        0 |        1 | Zero      |
#     | bin auto[173]                  |        0 |        1 | Zero      |
#     | bin auto[174]                  |        0 |        1 | Zero      |
#     | bin auto[175]                  |        0 |        1 | Zero      |
#     | bin auto[176]                  |        0 |        1 | Zero      |
#     | bin auto[177]                  |        0 |        1 | Zero      |
#     | bin auto[178]                  |        0 |        1 | Zero      |
#     | bin auto[179]                  |        0 |        1 | Zero      |
#     | bin auto[180]                  |        0 |        1 | Zero      |
#     | bin auto[181]                  |        0 |        1 | Zero      |
#     | bin auto[182]                  |        1 |        1 | Covered   |
#     | bin auto[183]                  |        0 |        1 | Zero      |
#     | bin auto[184]                  |        0 |        1 | Zero      |
#     | bin auto[185]                  |        0 |        1 | Zero      |
#     | bin auto[186]                  |        0 |        1 | Zero      |
#     | bin auto[187]                  |        0 |        1 | Zero      |
#     | bin auto[188]                  |        0 |        1 | Zero      |
#     | bin auto[189]                  |        1 |        1 | Covered   |
#     | bin auto[190]                  |        0 |        1 | Zero      |
#     | bin auto[191]                  |        0 |        1 | Zero      |
#     | bin auto[192]                  |        0 |        1 | Zero      |
#     | bin auto[193]                  |        0 |        1 | Zero      |
#     | bin auto[194]                  |        0 |        1 | Zero      |
#     | bin auto[195]                  |        0 |        1 | Zero      |
#     | bin auto[196]                  |        0 |        1 | Zero      |
#     | bin auto[197]                  |        0 |        1 | Zero      |
#     | bin auto[198]                  |        1 |        1 | Covered   |
#     | bin auto[199]                  |        0 |        1 | Zero      |
#     | bin auto[200]                  |        0 |        1 | Zero      |
#     | bin auto[201]                  |        0 |        1 | Zero      |
#     | bin auto[202]                  |        1 |        1 | Covered   |
#     | bin auto[203]                  |        0 |        1 | Zero      |
#     | bin auto[204]                  |        0 |        1 | Zero      |
#     | bin auto[205]                  |        0 |        1 | Zero      |
#     | bin auto[206]                  |        0 |        1 | Zero      |
#     | bin auto[207]                  |        1 |        1 | Covered   |
#     | bin auto[208]                  |        0 |        1 | Zero      |
#     | bin auto[209]                  |        0 |        1 | Zero      |
#     | bin auto[210]                  |        0 |        1 | Zero      |
#     | bin auto[211]                  |        0 |        1 | Zero      |
#     | bin auto[212]                  |        0 |        1 | Zero      |
#     | bin auto[213]                  |        0 |        1 | Zero      |
#     | bin auto[214]                  |        0 |        1 | Zero      |
#     | bin auto[215]                  |        0 |        1 | Zero      |
#     | bin auto[216]                  |        0 |        1 | Zero      |
#     | bin auto[217]                  |        0 |        1 | Zero      |
#     | bin auto[218]                  |        0 |        1 | Zero      |
#     | bin auto[219]                  |        0 |        1 | Zero      |
#     | bin auto[220]                  |        0 |        1 | Zero      |
#     | bin auto[221]                  |        0 |        1 | Zero      |
#     | bin auto[222]                  |        0 |        1 | Zero      |
#     | bin auto[223]                  |        0 |        1 | Zero      |
#     | bin auto[224]                  |        0 |        1 | Zero      |
#     | bin auto[225]                  |        0 |        1 | Zero      |
#     | bin auto[226]                  |        0 |        1 | Zero      |
#     | bin auto[227]                  |        0 |        1 | Zero      |
#     | bin auto[228]                  |        0 |        1 | Zero      |
#     | bin auto[229]                  |        1 |        1 | Covered   |
#     | bin auto[230]                  |        0 |        1 | Zero      |
#     | bin auto[231]                  |        0 |        1 | Zero      |
#     | bin auto[232]                  |        1 |        1 | Covered   |
#     | bin auto[233]                  |        0 |        1 | Zero      |
#     | bin auto[234]                  |        0 |        1 | Zero      |
#     | bin auto[235]                  |        0 |        1 | Zero      |
#     | bin auto[236]                  |        0 |        1 | Zero      |
#     | bin auto[237]                  |        1 |        1 | Covered   |
#     | bin auto[238]                  |        0 |        1 | Zero      |
#     | bin auto[239]                  |        0 |        1 | Zero      |
#     | bin auto[240]                  |        0 |        1 | Zero      |
#     | bin auto[241]                  |        0 |        1 | Zero      |
#     | bin auto[242]                  |        0 |        1 | Zero      |
#     | bin auto[243]                  |        0 |        1 | Zero      |
#     | bin auto[244]                  |        0 |        1 | Zero      |
#     | bin auto[245]                  |        0 |        1 | Zero      |
#     | bin auto[246]                  |        0 |        1 | Zero      |
#     | bin auto[247]                  |        0 |        1 | Zero      |
#     | bin auto[248]                  |        0 |        1 | Zero      |
#     | bin auto[249]                  |        0 |        1 | Zero      |
#     | bin auto[250]                  |        0 |        1 | Zero      |
#     | bin auto[251]                  |        0 |        1 | Zero      |
#     | bin auto[252]                  |        0 |        1 | Zero      |
#     | bin auto[253]                  |        0 |        1 | Zero      |
#     | bin auto[254]                  |        0 |        1 | Zero      |
#     | bin auto[255]                  |        0 |        1 | Zero      |
#     |--------------------------------|----------|----------|-----------|
#     | COVERPOINT <UNNAMED1>::cp2     |  75.000% | 100.000% | Uncovered |
#     |--------------------------------|----------|----------|-----------|
#     | bin auto[0]                    |        0 |        1 | Zero      |
#     | bin auto[1]                    |        2 |        1 | Covered   |
#     | bin auto[2]                    |        2 |        1 | Covered   |
#     | bin auto[3]                    |        2 |        1 | Covered   |
#     | bin auto[4]                    |        0 |        1 | Zero      |
#     | bin auto[5]                    |        2 |        1 | Covered   |
#     | bin auto[6]                    |        2 |        1 | Covered   |
#     | bin auto[7]                    |        1 |        1 | Covered   |
#     | bin auto[8]                    |        0 |        1 | Zero      |
#     | bin auto[9]                    |        1 |        1 | Covered   |
#     | bin auto[10]                   |        2 |        1 | Covered   |
#     | bin auto[11]                   |        1 |        1 | Covered   |
#     | bin auto[12]                   |        2 |        1 | Covered   |
#     | bin auto[13]                   |        2 |        1 | Covered   |
#     | bin auto[14]                   |        1 |        1 | Covered   |
#     | bin auto[15]                   |        0 |        1 | Zero      |
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
