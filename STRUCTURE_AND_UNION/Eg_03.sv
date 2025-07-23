module stucture;
 typedef struct{
    string employee_name;
    int employee_id;
    int experience;
    int salary;
  }employee_details;
  employee_details em1,em2,em3;
  
  initial begin
    em1.employee_name="xyzxyz";
    em1.employee_id=123;
    em1.experience=2;
    em1.salary=50000;
    
    em2='{"pqrs",456,3,67000};
    em3='{"lmno",678,4,56091};
    
    $display("EMPLOYEE_DETAILS \nNAME=%0s\nID=%0d\nEXPREIENCE=%0d\nSALARY=%0d\nBITSTREAM SIZE OF THE ARRAY",em1.employee_name,em1.employee_id,em1.experience,em1.salary);
    $display("EMPLOYEE_DETAILS \nNAME=%0s\nID=%0d\nEXPREIENCE=%0d\nSALARY=%0d",em2.employee_name,em2.employee_id,em2.experience,em2.salary);
    $display("EMPLOYEE_DETAILS \nNAME=%0s\nID=%0d\nEXPREIENCE=%0d\nSALARY=%0d",em3.employee_name,em3.employee_id,em3.experience,em3.salary);
    
  end
endmodule

// output
xcelium> run
EMPLOYEE_DETAILS 
NAME=xyzxyz
ID=123
EXPREIENCE=2
SALARY=50000
BITSTREAM SIZE OF THE ARRAY
EMPLOYEE_DETAILS 
NAME=pqrs
ID=456
EXPREIENCE=3
SALARY=67000
EMPLOYEE_DETAILS 
NAME=lmno
ID=678
EXPREIENCE=4
SALARY=56091
xmsim: *W,RNQUIE: Simulation is complete.
