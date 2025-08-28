class student;
  static int marks = 99;
  extern task mark_result(int m);
endclass
  
task student::mark_result(int m);
  marks = m;
endtask
  
module tb;
  initial begin
    $display("student marks = %0d", student::marks);
  end
endmodule



// output
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: student marks = 99
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
