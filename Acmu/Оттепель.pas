Program Den;
var a:array[1..100] of longint; N,i,k,m:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
k:=0;
m:=0;
read(N);
for i:=1 to N do
read(a[i]);
for i:=1 to N do
if a[i]<=0 then k:=0 else begin k:=k+1;
if k>m then m:=k; end;
write(m);
end.