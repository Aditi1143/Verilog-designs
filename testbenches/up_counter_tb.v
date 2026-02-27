module up_counter_tb();
  reg clk=0,rst,enable;
  wire [3:0]q;
  up_counter uut(clk,rst,enable,q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    rst=1;enable=0;
    #10 rst=0;
    #10 enable=1;
    #100;
    enable=0;
    #20;
    enable=1;#50;
    $finish;
  end
endmodule
    