Program Den;
var s:string; n,k:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
n:=0;
k:=0;
read(s);
val(s[2],n,k);
if (n mod 2 = 0) and ((s[1]='A') or (s[1]='C') or (s[1]='E') or (s[1]='G')) then write('WHITE') else
if (n mod 2 <>0) and ((s[1]='B') or (s[1]='D') or (s[1]='F') or (s[1]='H')) then write('WHITE') else write('BLACK');
end.