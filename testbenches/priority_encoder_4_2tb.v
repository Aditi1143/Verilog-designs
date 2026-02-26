module pe4_2tb();
  reg[3:0]i;
  wire[1:0]y;
  pe4_2 uut(i,y);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  i=4'b0000;
  #20 i=4'b1011;
  #20 i=4'b0001;
  #20 i=4'b0110;
  #20 i=4'b0010;
  #20 i=4'b0100;
  #20 i=4'b1000;
  $finish;
  end
endmodule
