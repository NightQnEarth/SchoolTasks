Program Den;
var N,k,g,m:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
k:=0;
g:=0;
read(N);
m:=N;
while N<>1 do begin
k:=k + N mod 2; N:=N div 2; end;
g:=m+k+1;
write(g);
end.