var n:integer;
begin
assign (input,'input.txt'); reset (input);
assign (output,'output.txt'); rewrite (output);
read(n);
if n<2 then write(0)else
if n mod 2 = 0 then write(n div 2)else write(n);
end.