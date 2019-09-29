var a,b:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(a,b);
begin
if a>b then writeln('>');
if a<b then writeln('<');
if a=b then writeln('=');
end;
end.