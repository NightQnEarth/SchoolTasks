var n,s,i:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
s:=0;
read(n);
for i:=1 to n do
if n mod i = 0 then s:=s+i;
write(s);
end.