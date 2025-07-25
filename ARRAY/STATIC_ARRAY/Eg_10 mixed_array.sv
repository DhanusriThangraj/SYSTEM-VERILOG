module static_array;
  logic[2:0][3:0] mixed_array[2:0][3:0];
  initial begin
    foreach(mixed_array[k,m])begin 
      mixed_array[k][m]=$urandom_range(20,50);
      $display("display the 2_unpacked_array [%0d][%0d]=[%0b]",k,m,mixed_array[k][m]);
    end
    foreach(mixed_array[i,j])begin 
      mixed_array[i][j]=$urandom_range(20,50);
      $display("display the 2_packed_array   [%0d][%0d]=[%0b]",i,j,mixed_array[i][j]);
    end
    
    foreach (mixed_array[k,m,i,j]) begin
      $display("display the mixed_array      [%0d][%0d][%0d][%0d]=[%0b]",k,m,i,j,mixed_array[k][m][i][j]);
    end
    
    $display("display all the mixed_array elements=%p",mixed_array);
  end
endmodule
  
  //output
xcelium> run
display the 2_unpacked_array [2][3]=[100001]
display the 2_unpacked_array [2][2]=[11000]
display the 2_unpacked_array [2][1]=[101011]
display the 2_unpacked_array [2][0]=[101001]
display the 2_unpacked_array [1][3]=[11110]
display the 2_unpacked_array [1][2]=[110000]
display the 2_unpacked_array [1][1]=[11010]
display the 2_unpacked_array [1][0]=[110001]
display the 2_unpacked_array [0][3]=[100000]
display the 2_unpacked_array [0][2]=[11111]
display the 2_unpacked_array [0][1]=[101111]
display the 2_unpacked_array [0][0]=[100100]
display the 2_packed_array   [2][3]=[101100]
display the 2_packed_array   [2][2]=[101011]
display the 2_packed_array   [2][1]=[100011]
display the 2_packed_array   [2][0]=[110000]
display the 2_packed_array   [1][3]=[100011]
display the 2_packed_array   [1][2]=[101010]
display the 2_packed_array   [1][1]=[11010]
display the 2_packed_array   [1][0]=[110001]
display the 2_packed_array   [0][3]=[110001]
display the 2_packed_array   [0][2]=[100000]
display the 2_packed_array   [0][1]=[10101]
display the 2_packed_array   [0][0]=[100111]
display the mixed_array      [2][3][2][3]=[0]
display the mixed_array      [2][3][2][2]=[0]
display the mixed_array      [2][3][2][1]=[0]
display the mixed_array      [2][3][2][0]=[0]
display the mixed_array      [2][3][1][3]=[0]
display the mixed_array      [2][3][1][2]=[0]
display the mixed_array      [2][3][1][1]=[1]
display the mixed_array      [2][3][1][0]=[0]
display the mixed_array      [2][3][0][3]=[1]
display the mixed_array      [2][3][0][2]=[1]
display the mixed_array      [2][3][0][1]=[0]
display the mixed_array      [2][3][0][0]=[0]
display the mixed_array      [2][2][2][3]=[0]
display the mixed_array      [2][2][2][2]=[0]
display the mixed_array      [2][2][2][1]=[0]
display the mixed_array      [2][2][2][0]=[0]
display the mixed_array      [2][2][1][3]=[0]
display the mixed_array      [2][2][1][2]=[0]
display the mixed_array      [2][2][1][1]=[1]
display the mixed_array      [2][2][1][0]=[0]
display the mixed_array      [2][2][0][3]=[1]
display the mixed_array      [2][2][0][2]=[0]
display the mixed_array      [2][2][0][1]=[1]
display the mixed_array      [2][2][0][0]=[1]
display the mixed_array      [2][1][2][3]=[0]
display the mixed_array      [2][1][2][2]=[0]
display the mixed_array      [2][1][2][1]=[0]
display the mixed_array      [2][1][2][0]=[0]
display the mixed_array      [2][1][1][3]=[0]
display the mixed_array      [2][1][1][2]=[0]
display the mixed_array      [2][1][1][1]=[1]
display the mixed_array      [2][1][1][0]=[0]
display the mixed_array      [2][1][0][3]=[0]
display the mixed_array      [2][1][0][2]=[0]
display the mixed_array      [2][1][0][1]=[1]
display the mixed_array      [2][1][0][0]=[1]
display the mixed_array      [2][0][2][3]=[0]
display the mixed_array      [2][0][2][2]=[0]
display the mixed_array      [2][0][2][1]=[0]
display the mixed_array      [2][0][2][0]=[0]
display the mixed_array      [2][0][1][3]=[0]
display the mixed_array      [2][0][1][2]=[0]
display the mixed_array      [2][0][1][1]=[1]
display the mixed_array      [2][0][1][0]=[1]
display the mixed_array      [2][0][0][3]=[0]
display the mixed_array      [2][0][0][2]=[0]
display the mixed_array      [2][0][0][1]=[0]
display the mixed_array      [2][0][0][0]=[0]
display the mixed_array      [1][3][2][3]=[0]
display the mixed_array      [1][3][2][2]=[0]
display the mixed_array      [1][3][2][1]=[0]
display the mixed_array      [1][3][2][0]=[0]
display the mixed_array      [1][3][1][3]=[0]
display the mixed_array      [1][3][1][2]=[0]
display the mixed_array      [1][3][1][1]=[1]
display the mixed_array      [1][3][1][0]=[0]
display the mixed_array      [1][3][0][3]=[0]
display the mixed_array      [1][3][0][2]=[0]
display the mixed_array      [1][3][0][1]=[1]
display the mixed_array      [1][3][0][0]=[1]
display the mixed_array      [1][2][2][3]=[0]
display the mixed_array      [1][2][2][2]=[0]
display the mixed_array      [1][2][2][1]=[0]
display the mixed_array      [1][2][2][0]=[0]
display the mixed_array      [1][2][1][3]=[0]
display the mixed_array      [1][2][1][2]=[0]
display the mixed_array      [1][2][1][1]=[1]
display the mixed_array      [1][2][1][0]=[0]
display the mixed_array      [1][2][0][3]=[1]
display the mixed_array      [1][2][0][2]=[0]
display the mixed_array      [1][2][0][1]=[1]
display the mixed_array      [1][2][0][0]=[0]
display the mixed_array      [1][1][2][3]=[0]
display the mixed_array      [1][1][2][2]=[0]
display the mixed_array      [1][1][2][1]=[0]
display the mixed_array      [1][1][2][0]=[0]
display the mixed_array      [1][1][1][3]=[0]
display the mixed_array      [1][1][1][2]=[0]
display the mixed_array      [1][1][1][1]=[0]
display the mixed_array      [1][1][1][0]=[1]
display the mixed_array      [1][1][0][3]=[1]
display the mixed_array      [1][1][0][2]=[0]
display the mixed_array      [1][1][0][1]=[1]
display the mixed_array      [1][1][0][0]=[0]
display the mixed_array      [1][0][2][3]=[0]
display the mixed_array      [1][0][2][2]=[0]
display the mixed_array      [1][0][2][1]=[0]
display the mixed_array      [1][0][2][0]=[0]
display the mixed_array      [1][0][1][3]=[0]
display the mixed_array      [1][0][1][2]=[0]
display the mixed_array      [1][0][1][1]=[1]
display the mixed_array      [1][0][1][0]=[1]
display the mixed_array      [1][0][0][3]=[0]
display the mixed_array      [1][0][0][2]=[0]
display the mixed_array      [1][0][0][1]=[0]
display the mixed_array      [1][0][0][0]=[1]
display the mixed_array      [0][3][2][3]=[0]
display the mixed_array      [0][3][2][2]=[0]
display the mixed_array      [0][3][2][1]=[0]
display the mixed_array      [0][3][2][0]=[0]
display the mixed_array      [0][3][1][3]=[0]
display the mixed_array      [0][3][1][2]=[0]
display the mixed_array      [0][3][1][1]=[1]
display the mixed_array      [0][3][1][0]=[1]
display the mixed_array      [0][3][0][3]=[0]
display the mixed_array      [0][3][0][2]=[0]
display the mixed_array      [0][3][0][1]=[0]
display the mixed_array      [0][3][0][0]=[1]
display the mixed_array      [0][2][2][3]=[0]
display the mixed_array      [0][2][2][2]=[0]
display the mixed_array      [0][2][2][1]=[0]
display the mixed_array      [0][2][2][0]=[0]
display the mixed_array      [0][2][1][3]=[0]
display the mixed_array      [0][2][1][2]=[0]
display the mixed_array      [0][2][1][1]=[1]
display the mixed_array      [0][2][1][0]=[0]
display the mixed_array      [0][2][0][3]=[0]
display the mixed_array      [0][2][0][2]=[0]
display the mixed_array      [0][2][0][1]=[0]
display the mixed_array      [0][2][0][0]=[0]
display the mixed_array      [0][1][2][3]=[0]
display the mixed_array      [0][1][2][2]=[0]
display the mixed_array      [0][1][2][1]=[0]
display the mixed_array      [0][1][2][0]=[0]
display the mixed_array      [0][1][1][3]=[0]
display the mixed_array      [0][1][1][2]=[0]
display the mixed_array      [0][1][1][1]=[0]
display the mixed_array      [0][1][1][0]=[1]
display the mixed_array      [0][1][0][3]=[0]
display the mixed_array      [0][1][0][2]=[1]
display the mixed_array      [0][1][0][1]=[0]
display the mixed_array      [0][1][0][0]=[1]
display the mixed_array      [0][0][2][3]=[0]
display the mixed_array      [0][0][2][2]=[0]
display the mixed_array      [0][0][2][1]=[0]
display the mixed_array      [0][0][2][0]=[0]
display the mixed_array      [0][0][1][3]=[0]
display the mixed_array      [0][0][1][2]=[0]
display the mixed_array      [0][0][1][1]=[1]
display the mixed_array      [0][0][1][0]=[0]
display the mixed_array      [0][0][0][3]=[0]
display the mixed_array      [0][0][0][2]=[1]
display the mixed_array      [0][0][0][1]=[1]
display the mixed_array      [0][0][0][0]=[1]
display all the mixed_array elements='{'{'h27, 'h15, 'h20, 'h31}, '{'h31, 'h1a, 'h2a, 'h23}, '{'h30, 'h23, 'h2b, 'h2c}}
xmsim: *W,RNQUIE: Simulation is complete.
