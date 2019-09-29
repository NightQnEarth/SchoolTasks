Program Den;
var A1,A2,N:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(A1,A2,N);
write(A1+(A2-A1)*(N-1));
end.
