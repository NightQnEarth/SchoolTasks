Program Den;
var s:string; i,k,max:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(s);
k:=0;
max:=0;
for i:=1 to length(s) do begin
if s[i]='0' then k:=k+1 else k:=0;
if k > max then max:=k;
end;
write(max);
end.
