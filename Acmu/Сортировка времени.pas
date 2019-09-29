Program Den;
var N,h,m,s,g,i,j:longint; k:array[0..100] of longint;
begin

  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
read(N);

for i:=1 to N do begin

read(h,m,s);

g:=h*3600+m*60+s;

k[i]:=g;
end;

for i:=1 to N-1 do
   for j:=1 to N-i do
   if k[j]>k[j+1] then
   begin
   k[0]:=k[j];
   k[j]:=k[j+1];
   k[j+1]:=k[0]; end;

for i:=1 to N do begin
h:=k[i] div 3600;
m:=(k[i] div 60) mod 60;
s:=k[i] mod 60;
writeln(h,' ',m,' ',s);
end;
end.

   
   


   



