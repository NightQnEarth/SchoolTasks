Program Den;
var n,k:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
k:=0;
read(n);
while n<>1 do begin
k:=k + n mod 2; n:=n div 2; end;
write(k+1);
end.
