module structure;
 typedef  struct{
    string name;
    int roll_num;
    int mark;
  }student_details;
  
  student_details st1,st2;  
  initial begin
    st1.name="Dhanusri";
    st1.roll_num=07;
    st1.mark=82;
    
    st2='{"Devaki",04,85};
    
    $display("display the student_details,%p",st1);
    $display("display the student_details,%p",st2);
    $display(" Student Name=%s \n Roll_number=%0d \n Marks=%0d",st1.name,st1.roll_num,st1.mark);
    $display(" Student Name=%s \n Roll_number=%0d \n Marks=%0d",st2.name,st2.roll_num,st2.mark);  
  end
endmodule

// output
xcelium> run
display the student_details,'{name:"Dhanusri", roll_num:7, mark:82}
display the student_details,'{name:"Devaki", roll_num:4, mark:85}
 Student Name=Dhanusri 
 Roll_number=7 
 Marks=82
 Student Name=Devaki 
 Roll_number=4 
 Marks=85
