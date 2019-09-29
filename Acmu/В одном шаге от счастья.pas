Program Den;
var K,i:longint; a:array[1..10] of longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(K);
for i:=1 to K do
read(a[i]);
for i:=1 to K do
if (((a[i]-1) div 100000 + (a[i]-1) mod 100000 div 10000 + (a[i]-1) mod 10000 div 1000)=((a[i]-1) mod 1000 div 100 + (a[i]-1) mod 100 div 10 + (a[i]-1) mod 10))
or (((a[i]+1) div 100000 + (a[i]+1) mod 100000 div 10000 + (a[i]+1) mod 10000 div 1000)=((a[i]+1) mod 1000 div 100 + (a[i]+1) mod 100 div 10 + (a[i]+1) mod 10)) then
writeln('Yes') else writeln('No');
end.