class a;
 static	byte ab=123;
 static function void display();
    $display("values =%0b",ab);
  endfunction
endclass

module b;
  initial begin
    a::display();
  end
endmodule

// output
xcelium> run
values =1111011
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
