module fulladder (
input a,
input b,
input cin,
output s,
output co
);
wire s1,c1,c2;
xor (s1,a,b);
xor (s,s1,cin);
and(c1,s1,cin);
and(c2,a,b);
or(co,c1,c2);
endmodule
