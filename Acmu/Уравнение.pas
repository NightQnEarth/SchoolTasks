Program Den;
var A,B,C,D,i:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(A,B,C,D);
for i:=-100 to 100 do
if i*i*i * A + i*i * B + i*C + D = 0 then write(i,' ');
end.