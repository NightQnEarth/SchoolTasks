var a:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(a);
if (a div 1000 = a mod 10) and (a div 10 mod 10 = a div 100 mod 10) then write('YES') else write('NO');
end.