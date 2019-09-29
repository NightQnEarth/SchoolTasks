var k,i:longint; G,C,V,x:string;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(k);
G:='G';
C:='C';
V:='V';
x:='0';
for i:=1 to k do
begin
x:=V;
V:=C;
C:=x;
x:=G;
G:=C;
C:=x;
end;
write(G,C,V);
end.