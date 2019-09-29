Program Den;
var N,i,j,d:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(N,i,j);
if i<j then
if j-i-1 < N-j+i-1 then d:=j-i-1 else d:=N-j+i-1;
if j<i then
if i-j-1 < N-i+j-1 then d:=i-j-1 else d:=N-i+j-1;
write(d);
end.
