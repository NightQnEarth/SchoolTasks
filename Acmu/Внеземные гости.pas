var r1,r2,r3:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(r1,r2,r3);
if r1>=(r2+r3) then write('YES') else write('NO');
end.