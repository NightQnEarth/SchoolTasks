Program Den;
var N,i:longint; a:array[1..30] of longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(N);
a[1]:=1;
a[2]:=1;
if N=0 then write(0) else begin
for i:=3 to N do
a[i]:=a[i-1]+a[i-2];
write(a[N]); end;
end.

