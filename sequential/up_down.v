module up_down(clk,rst,mode,enable,q);
  input clk,rst,mode,enable;
  output reg [3:0]q;
  always@(posedge clk)
    begin
      if(rst)
        q<=4'b0000;
      else if(enable)
        if(mode)
        q<=q+1;
       else
        q<=q-1;
    end
endmodule
