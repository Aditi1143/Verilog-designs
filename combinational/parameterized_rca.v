module parameterized_rca(a,b,cin,s,cout);
 parameter N=4;
 input [N-1:0]a,b;
 input cin;
 output [N-1:0]s;
 output cout;
  wire[N:0]c;
  assign c[0]=cin;
  assign cout=c[N];
 generate
   genvar i;
   for(i=0;i<N;i=i+1)
     begin:RCA
   full_adder fa(a[i],b[i],c[i],s[i],c[i+1]);
     end
 endgenerate 
endmodule
module full_adder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign sum=a^b^cin;
  assign cout=(a&b)|(cin&(a^b));
endmodule