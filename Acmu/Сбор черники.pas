Program Den;
var a:array[1..1000] of longint; i,max,N:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
max:=0;
read(N);
for i:=1 to N do
read(a[i]);
for i:=2 to N-1 do
if a[i-1]+a[i]+a[i+1]>max then max:=a[i-1]+a[i]+a[i+1];
if a[1]+a[2]+a[N]>max then max:=a[1]+a[2]+a[N] else if a[N-1]+a[N]+a[1]>max then max:=a[N-1]+a[N]+a[1];
write(max);
end.