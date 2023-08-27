module Even_Down_Counter_tb();
import  downcounter_pkg::*;

bit clk,clkin,rst;
bit [7:0]out;
bit [7:0]c;

even_down_counter counter= new(clk,rst);
even_down_count dut(clk,rst,out,clkin);

initial begin
clkin=0;
clk=0;
rst=1;
#8 rst=0;
end
always@(posedge clk)begin
 counter.counterLogic(rst);
 c=counter.count;
 #2 $display("The Expected and Got Outputs are %d and %d",c,out);
 end
always #5 clk=~clk;
endmodule
