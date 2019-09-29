Program Den;
var s,s1,s2,s3:string; i,k,n:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(s);

k:=0;

n:=0;

s1:='>>-->';

s2:='<--<<';

for i:=1 to length(s)-4 do
if (s[i]+s[i+1]+s[i+2]+s[i+3]+s[i+4]=s1) or (s[i]+s[i+1]+s[i+2]+s[i+3]+s[i+4]=s2) then k:=k+1;

write(k);

end.
