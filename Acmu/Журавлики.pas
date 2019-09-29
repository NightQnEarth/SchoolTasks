var s:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(s);
writeln(s div 6,' ',4 * (s div 6),' ',s div 6);
end.