var a,b,n:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(n,a,b);
writeln(a*b*n*2);
end.