module decoder2_4tb();
  reg[1:0]i;
  wire[3:0]y;
  decoder2_4 uut(i,y);
  initial begin
    i=0;
    $dumpfile("dump.vcd");
     $dumpvars;
     #50 $finish;
        end
   always #10 i=i+1;
endmodule   