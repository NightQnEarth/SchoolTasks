Program Den;
var N,i,k:longint; a:array[1..1000] of longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(N);
k:=N;
for i:=1 to N do
read(a[i]);
for i:=1 to N do
if a[i]<=437 then begin write('Crash ',i); break; end else k:=k-1;
if k=0 then write('No crash');
end.