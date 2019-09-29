Program Den;
var x1,y1,r1,x2,y2,r2:longint; r:real;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(x1,y1,r1,x2,y2,r2);
r:=sqrt(sqr(x1-x2)+sqr(y1-y2));
if ((x1=x2) and (y1=y2) and (r1=r2)) or ((r<=r1+r2) and (r1<=r+r2) and (r2<=r+r1)) then write('YES') else write('NO');
end.
