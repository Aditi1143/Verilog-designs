module encoder4_2_tb();
  reg [3:0]i;
  wire [1:0]y;
  encoder4_2 uut(i,y);
initial begin 
  i=0;
  $dumpfile("dump.vcd");
  $dumpvars;
  #50 $finish;
end
   always #5 i=i+1;
endmodule