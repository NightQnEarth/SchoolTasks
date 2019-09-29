Program Den;
var s:string; a1,a2,a3,i,k,max:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(s);
a1:=1;
a2:=0;
a3:=0;
k:=0;
max:=0;
for i:=1 to length(s) do
if s[i]='A' then begin k:=a1; a1:=a2; a2:=k; end else

if s[i]='B' then begin k:=a3; a3:=a2; a2:=k; end else

if s[i]='C' then begin k:=a1; a1:=a3; a3:=k; end;

if a1=1 then write(1) else if a2=1 then write(2) else write(3);
end.

