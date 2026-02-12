module cla(a,b,cin,s,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]s;
  output cout;
  wire [3:0] g,p;
  wire c1,c2,c3;
  assign g=a&b;
  assign p=a^b;
  assign c1=(g[0])|(cin & p[0]);
  assign c2=(g[1])|(g[0]&p[1])|(cin & p[0] & p[1]);
  assign c3=(g[2])|(g[1] &p[2])|(g[0]&p[1]&p[2])|(cin & p[0] & p[1] & p[2]);
  assign cout=(g[3])| (g[2] & p[3])|(g[1]&p[2]&p[3])|(g[0]&p[1]&p[2] &p[3])|(cin & p[0] & p[1] & p[2] & p[3]);
  assign s[0]=p[0]^cin;
  assign s[1]=p[1]^c1;
  assign s[2]=p[2]^c2;
  assign s[3]=p[3]^c3;
endmodule