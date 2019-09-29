Program Den;
var N,i,j,m,c,g:longint; a:array[1..1000] of longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(N);

for c:=1 to N do
read(a[c]);

read(m);

for c:=1 to m do
begin
read(i,j);
for g:=i to j do write(a[g],' ');
end;

end.