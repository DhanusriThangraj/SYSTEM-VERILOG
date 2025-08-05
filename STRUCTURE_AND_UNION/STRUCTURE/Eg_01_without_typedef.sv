module structure;
  struct{
    string name;
    int roll_num;
    int mark;
  }student_details;

  initial begin
    student_details.name="Dhanusri";
    student_details.roll_num=07;
    student_details.mark=82;
    
    $display("display the student_details,%p",student_details);
    $display(" Student Name=%s \n Roll_number=%0d \n Marks=%0d",student_details.name,student_details.roll_num,student_details.mark);
  end
endmodule

// output
xcelium> run
display the student_details,'{name:"Dhanusri", roll_num:7, mark:82}
 Student Name=Dhanusri 
 Roll_number=7 
 Marks=82
xmsim: *W,RNQUIE: Simulation is complete.
