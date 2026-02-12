module cla_tb();
  reg [3:0]a,b;
  reg cin;
  wire [3:0]s;
  wire cout;
  cla dut(a,b,cin,s,cout);
  initial begin 
    a=0;b=0;cin=0;
    $monitor("time=%d a=%b b=%b cin=%b -> s=%b cout=%b",$time,a,b,cin,s,cout);
    $dumpfile("dump.vcd");
    $dumpvars;
    #160 $finish;
  end
  always #10 a=a+1;
  always #10 b=b+1;
  always #10 cin=cin+1;
endmodule