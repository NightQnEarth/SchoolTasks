Program Den;
var L,W,H:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(L,W,H);
if (2*H*(L+W)) mod 16 <> 0 then write((2*H*(L+W)) div 16 + 1) else write((2*H*(L+W)) div 16);
end.