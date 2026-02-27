module universal_shift_reg(serial_in,clk,rst,mode,parallel_in,q);
  input serial_in,clk,rst;
  input[1:0]mode;
  input[3:0]parallel_in;
  output reg [3:0]q;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        q<=4'b0000;
      else
        case(mode)
        2'b00:q<=q;//hold
          2'b01:q<={serial_in,q[3:1]};//right shift
          2'b10:q<={q[2:0],serial_in};//left shift
          2'b11:q<=parallel_in;//parallel load
          default:q<=4'b0000;
        endcase
    end
endmodule