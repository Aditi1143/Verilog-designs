module rca_tb();
  reg [3:0]a,b;
  reg cin;
  wire [3:0]s;
  wire cout;
  rca dut(a,b,cin,s,cout);
  initial begin
    a=0;b=0;cin=0;
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t a=%b b=%b cin=%b -> s=%b cout=%b",
           $time, a, b, cin, s, cout);
    #160 $finish;
  end
  always #10 a=a+1;
  always #10 b=b+1;
  always #10 cin=cin+1;
endmodule