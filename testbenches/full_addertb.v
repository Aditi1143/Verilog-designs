module full_addertb();
reg a,b,cin;
wire sum,cout;
  full_adder uut(a,b,cin,sum,cout);
initial begin
   $dumpfile("dump.vcd");
    $dumpvars;
#10 a=0;b=0;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=1;cin=1;
end
endmodule