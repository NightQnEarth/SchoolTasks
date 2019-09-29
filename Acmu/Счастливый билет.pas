var a:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(a);
if (a div 100000+ a div 10000 mod 10 + a div 1000 mod 10)=(a div 100 mod 10+a div 10 mod 10 + a mod 10) then write('YES') else write('NO');
end.