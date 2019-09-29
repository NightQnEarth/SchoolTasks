var i,n:integer; a:array[1..1000] of integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(n);
for i:=1 to n do
read(a[i]);
for i:=n downto 1 do
writeln(a[i],' ');
end.