Program Den;
var a:array[1..30000] of longint; i,N,min,max: longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
min:=30001;
max:=0;
read(N);
for i:=1 to N do
read(a[i]);
for i:=1 to N do begin
if a[i]<min then min:=a[i];
if a[i]>max then max:=a[i];
end;
write(min,' ',max);
end.