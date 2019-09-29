var a,b,c,min,max:longint;
begin
assign (input,'input.txt'); reset (input);
assign (output,'output.txt'); rewrite (output);
read(a,b,c);
min:=0;
max:=0;
if (a<b) and (a<c) then min:=a else
if (b<a) and (b<c) then min:=b else
min:=c;
if (a>b) and (a>c) then max:=a else
if (b>a) and (b>c) then max:=b else
max:=c;
writeln(max-min);
end.