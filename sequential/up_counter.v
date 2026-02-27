module up_counter(clk,rst,enable,q);
  input clk,rst,enable;
  output reg [3:0]q;
  always@(posedge clk)
    begin
      if(rst)
        q<=4'b0000;
      else if(enable)
        q<=q+1;
    end
endmodule