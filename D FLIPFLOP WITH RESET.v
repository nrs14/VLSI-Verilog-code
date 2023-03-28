module d_ff(input d, clk, reset, output reg q);
always @(posedge clk or negedge reset) begin
if (!reset) begin
q <= 1'b0;
end
else begin
q <= d;
end
end
endmodule
