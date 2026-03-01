module up_down_tb();
  reg clk=0,rst,mode,enable;
  wire[3:0]q;
  up_down uut(clk,rst,mode,enable,q);
  always #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,up_down_tb);
    rst=1;mode=0;enable=0;#20;
    rst=0;enable=1;mode=1;#50;
    enable=0;#30;
    enable=1;
    mode=0;#50;
    
    #100 $finish;
  end
endmodule
