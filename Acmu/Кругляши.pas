Program Den;
var N:string; k,i:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(N);
k:=0;
for i:=1 to length(N) do
if N[i]='8' then k:=k+2 else if (N[i]='0') or (N[i]='9') or (N[i]='6') then k:=k+1;
write(k);
end.