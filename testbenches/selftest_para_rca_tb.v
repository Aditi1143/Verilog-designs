module selftest_para_rca_tb();
  parameter N = 4;
  reg [N-1:0] a,b;
  reg cin;
  wire [N-1:0] s;
  wire cout;

  integer i;
  reg [N:0] expected;
  parameterized_rca uut (a,b,cin,s,cout);
  initial begin
    for(i=0;i<200;i=i+1)
      begin
        a=$random;
        b=$random;
        cin=$random;
        #5;
        expected=a+b+cin;
        if({cout,s}!=expected)
          $display("FAIL, a=%b,b=%b,cin=%b,got=%b,expected=%b",a,b,cin,
                   {cout,s},expected);
        else
          $display("PASS,a=%b,b=%b,cin=%b,got=%b,expected=%b",a,b,cin,
                   {cout,s},expected);
      end
     #160 $finish;
  end
endmodule