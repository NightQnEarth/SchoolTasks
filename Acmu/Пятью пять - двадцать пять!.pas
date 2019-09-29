var a:integer;
begin
assign (input,'input.txt'); reset (input);
assign (output,'output.txt'); rewrite (output);
read(a);
if a=5 then write(25) else
write((a div 10)*(a div 10+1),25);
end.