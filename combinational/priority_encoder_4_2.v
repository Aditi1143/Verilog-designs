module pe4_2(i,y);
input [3:0]i;
output reg [1:0]y;
  always@(*)
    begin
    casez(i)
      4'b0001:y=2'b00;
      4'b001?:y=2'b01;
      4'b01??:y=2'b10;
      4'b1???:y=2'b11;
      default:y=2'b00;
    endcase
    end
endmodule