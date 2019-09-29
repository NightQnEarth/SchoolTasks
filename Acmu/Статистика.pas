Program Den;
var a:array[1..100] of longint; i,k,N,r: longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
k:=0;
r:=0;
read(N);
for i:=1 to N do
read(a[i]);
for i:=1 to N do
if a[i] mod 2 <>0 then begin write(a[i],' '); k:=k+1; end;
writeln;
for i:=1 to N do
if a[i] mod 2 = 0 then begin write(a[i],' '); r:=r+1; end;
writeln;
if r<k then write('NO') else write('YES');
end.


