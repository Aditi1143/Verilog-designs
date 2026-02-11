module mux_4_1_tb();
  reg [3:0]i;
  reg [1:0]s;
  wire y;
  mux_4_1 uut(i,s,y);
initial begin
  i=0;s=0;
   $dumpfile("dump.vcd");
    $dumpvars;
   #50 $finish;
end
always #5 i=i+1;
always #5 s=s+1;
 
endmodule