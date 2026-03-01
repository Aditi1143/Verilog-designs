module down_countertb();
reg clk = 0, rst, enable;
wire [3:0] q;
down_counter uut(clk, rst, enable, q);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    rst = 1; enable=0; 
    #20;
    rst = 0; enable=1; 
    #50;
    enable=0; 
    #30;
    enable=1; 
    #40;
    $finish;
end
initial
    $monitor("Time=%0t q=%d", $time, q);
endmodule