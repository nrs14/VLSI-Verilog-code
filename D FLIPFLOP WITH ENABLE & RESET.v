module d_ff_en_rst(input d, clk, en, reset, output reg q);
always @(posedge clk or negedge reset) begin
if (!reset) begin
q <= 1'b0;
end
else if (en) begin
q <= d;
end
end
endmodule
