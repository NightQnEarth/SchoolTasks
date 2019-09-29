Program Den;
var a:array [1..100] of longint; i,N,min,max,s,k,r,t:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
s:=0;
k:=1;
r:=0;
t:=0;
max:=-100;
min:=100;
read(N);
for i:=1 to N do
read(a[i]);
for i:=1 to N do
if a[i] > 0 then s:=s+a[i];
for i:=1 to N do
if a[i] > max then begin max:=a[i]; t:=i; end;
for i:=1 to N do
if a[i] < min then begin min:=a[i]; r:=i; end;
if r<t then
for i:=r+1 to t-1 do k:=k*a[i] else
if t<r then
for i:=t+1 to r-1 do k:=k*a[i];
write(s,' ',k);
end.

