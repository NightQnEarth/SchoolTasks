var a,c,d,e,b,m,n,r:integer;
begin
assign (input,'input.txt'); reset (input);
assign (output,'output.txt'); rewrite (output);
read(a,c,d,e,b,m,n,r);
if (a+d+b+n) > (c+e+m+r) then write('1') else
if (a+d+b+n) < (c+e+m+r) then write('2') else write('DRAW');
end.