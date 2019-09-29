Program Den;
var N,h,i:longint; a:array[1..100] of longint; b:array[1..100] of longint; g,max:real;
begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
read(N);
g:=0;
max:=0;
h:=0;
for i:=1 to N do
read(a[i]);
for i:=1 to N do
read(b[i]);

for i:=1 to N do begin
g:=a[i]*b[i]/100;
if g>max then begin max:=g; h:=i; end;
end;
write(h);
end.
