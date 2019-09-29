var st,b:string; i,num:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(b);
num:=0;
st:='qwertyuiopasdfghjklzxcvbnm';
for i:=1 to length(st) do
if st[i] = b then
begin
num:=i+1;
write(st[num]) end
else if b = 'm' then
begin
st[i]:='q';
write(st[i]);
break
end;
end.