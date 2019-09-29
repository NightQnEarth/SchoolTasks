Program Den;
var N,i,s:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
s:=0;
read(N);
if N=1 then s:=0 else

if N>1 then for i:=1 to N do s:=s+i else

if N<1 then for i:=1 downto N do s:=s+i;


writeln(s);
end.
