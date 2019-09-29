var K:longint; n:real;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(K);
n:=(sqrt(1+8*K)-1)/2;
write(trunc(n));
end.