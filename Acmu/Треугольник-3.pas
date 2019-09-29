Program Den;
var a,b,c:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(a,b,c);
if (a<=b+c) and (b<=a+c) and (c<=a+b) then write('YES') else write('NO');
end.