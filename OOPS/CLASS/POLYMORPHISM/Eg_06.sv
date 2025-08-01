class packet;
  integer i=1;
  function integer init();
    init=i;  
  endfunction
endclass

class child_packet extends packet;
  integer i=5;
  function integer init();
    init=-i;
  endfunction
endclass

module example;
  int j;
  initial begin
    child_packet c1=new();
    packet p1;
    p1=c1;//up casting
    $cast(c1,p1);//down casting
    j=c1.init();
    $display("j=%0d",j);
  end
endmodule

// output
xcelium> run
j=-5
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

// why we use $cast
child_packet c1 = p1;  // ❌ Compile error!
You must use $cast.

| Operation   | Description                              | Allowed Without `$cast`? |
| ----------- | ---------------------------------------- | ------------------------ |
| Upcasting   | Derived → Base class (e.g., `c1` → `p1`) | ✅ Yes (implicit)         |
| Downcasting | Base → Derived class (e.g., `p1` → `c1`) | ❌ No (requires `$cast`)  |


