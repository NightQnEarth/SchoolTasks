var n,i,h,k,m:integer;
begin
assign (input,'input.txt'); reset (input);
assign (output,'output.txt'); rewrite (output);
read(n);
k:=0;
m:=0;
for i:=1 to n do
begin
read(h);
if h=0 then k:=k+1 else if h=1 then m:=m+1;
end;
if k>m then write(m) else if m>k then write(k);
end.