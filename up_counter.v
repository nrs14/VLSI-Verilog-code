module up_counter( input clk, reset,
output reg [1:0] count);
always @(posedge clk, negedge reset) 
begin
if (!reset) 
begin
count <= 2'b0; 
end
else
begin 
count <= count + 1; 
end 
end
endmodule
