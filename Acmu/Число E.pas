var st,st2:string; n:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
st:='2.7182818284590452353602875';
st2:='3.7283828385690552454603985';
read(n);
if n=0 then writeln(3) else
begin st:=copy(st,1,n+1);
writeln(st,copy(st2,n+2,1));
end;
end.