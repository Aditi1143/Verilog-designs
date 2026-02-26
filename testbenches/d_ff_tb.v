module dfftb();
  reg d,clk=0,rst;
  wire q;
  dff uut(d,clk,rst,q);
  initial begin
    forever #5 clk=~clk;
  end
  initial begin
    d=0;
     $dumpfile("dump.vcd");
    $dumpvars;
   
    #10 rst=1;
    #10 rst=0;
     d=1;
    #10 d=0;
    #10 d=1;
   $finish;
  end
endmodule