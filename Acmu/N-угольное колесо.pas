Program Den;
var N,A:longint; ro,rv,m:real;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(N,A);

ro:=A/(2*sin(pi/N));

rv:=A/(2*((sin(pi/N))/(cos(pi/N))));

m:=ro-rv;

if m < 1 then write('YES') else write('NO');
end.