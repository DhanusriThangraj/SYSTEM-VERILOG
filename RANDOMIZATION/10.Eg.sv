class frame;
  randc bit [7:0]data;
endclass

class data_frame;
  bit [7:0] data[10];
  function void pre_randomize();
    frame f1=new();
    foreach (data[i])begin
      f1.randomize();
      data[i]=f1.data;
      $display("values of data in data class data=%0d data[%0d]=%0d",f1.data,i,data[i]);
    end
  endfunction
endclass
             
module test;
  data_frame d_f1;
  initial begin
    d_f1=new();
    assert(d_f1.randomize())
      else
        $display("randomization failed");
  end
endmodule


// output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
values of data in data class data=197 data[0]=197
values of data in data class data=190 data[1]=190
values of data in data class data=141 data[2]=141
values of data in data class data=183 data[3]=183
values of data in data class data=148 data[4]=148
values of data in data class data=155 data[5]=155
values of data in data class data=127 data[6]=127
values of data in data class data=169 data[7]=169
values of data in data class data=113 data[8]=113
values of data in data class data=176 data[9]=176
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
