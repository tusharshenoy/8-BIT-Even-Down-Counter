package downcounter_pkg;

class even_down_counter;

bit clk;
bit rst;
bit [7:0]count;

function new(bit clk1,bit rst1);
clk=clk1;
rst=rst1;
endfunction

function void counterLogic(rst);
if(rst)
   count=8'b0;
else
   count=count-2;
endfunction
endclass
endpackage
