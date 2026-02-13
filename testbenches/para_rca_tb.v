module para_rca_tb();
  parameter N = 4;
  reg [N-1:0] a,b;
  reg cin;
  wire [N-1:0]s;
  wire cout;
  parameterized_rca uut(a,b,cin,s,cout);
  initial begin
    a=0;b=0;cin=0;
    $dumpfile("dump.vcd");
    $dumpvars;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=1;cin=1;
  end
endmodule
