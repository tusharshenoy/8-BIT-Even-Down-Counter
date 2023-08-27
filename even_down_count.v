module even_down_count(clk,rst,out,clkin);
input clk;
input rst;
input clkin;
wire qb0,qb1,qb2,qb3,qb4,qb5,qb6,qb7;
output [7:0]out;

df d0(.clk(clkin),.rst(rst),.d(out[0]),.q(out[0]),.qb(qb0));

df d1(.clk(clk),.rst(rst),.d(qb1),.q(out[1]),.qb(qb1));

df d2(.clk(out[1]),.rst(rst),.d(qb2),.q(out[2]),.qb(qb2));

df d3(.clk(out[2]),.rst(rst),.d(qb3),.q(out[3]),.qb(qb3));

df d4(.clk(out[3]),.rst(rst),.d(qb4),.q(out[4]),.qb(qb4));
 
df d5(.clk(out[4]),.rst(rst),.d(qb5),.q(out[5]),.qb(qb5));
    
df d6(.clk(out[5]),.rst(rst),.d(qb6),.q(out[6]),.qb(qb6));
    
df d7(.clk(out[6]),.rst(rst),.d(qb7),.q(out[7]),.qb(qb7));

endmodule
