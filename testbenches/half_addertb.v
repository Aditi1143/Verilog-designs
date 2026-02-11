module half_addertb();
reg a,b;
wire sum,cout;
  half_adder uut(a,b,sum,cout);
initial begin
   $dumpfile("dump.vcd");
    $dumpvars;
#5 a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
end
endmodule