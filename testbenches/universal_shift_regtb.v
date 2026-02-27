module usr_tb();
  reg serial_in,clk=0,rst;
 reg[1:0]mode;
 reg[3:0]parallel_in;
  wire [3:0]q;
  universal_shift_reg uut(serial_in,clk,rst,mode,parallel_in,q);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,usr_tb);
    rst=1;
    #5; rst=0;
    #5; mode=2'b00;
    #10; serial_in=1;
    mode=2'b10;
    #10; serial_in=0; mode=2'b01;
    #10; mode=2'b11;parallel_in=4'b0110;
    #100 $finish;
  end
   always #5 clk=~clk;
endmodule
    