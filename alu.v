module alu(input [3:0] a, b, sel,
output reg [7:0] out);
always @(*) begin
case (sel)
4'b0000: out = a + b; // addition
4'b0001: out = a - b; // subtraction
4'b0010: out = a * b; // multiplication
4'b0011: out = a / b; // division
4'b0100: out = a | b; // bitwise OR
4'b0101: out = a & b; // bitwise AND
4'b0110: out = ~(a | b); // bitwise NOR
4'b0111: out = ~(a & b); // bitwise NAND
4'b1000: out = a ^ b; // bitwise XOR
4'b1001: out = ~(a ^ b); // bitwise XNOR
4'b1010: out = (a == b) ? 1 : 0; // equality
4'b1011: out = (a != b) ? 1 : 0; // inequality
4'b1100: out =~a; //not a
4'b1101: out = ~b //not b
default: out = 0; // default is zero
endcase
end
endmodule
