var x1,y1,x2,y2:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(x1,y1,x2,y2);
write(sqrt(sqr(x2-x1) + sqr(y2-y1)):0:5);
end.