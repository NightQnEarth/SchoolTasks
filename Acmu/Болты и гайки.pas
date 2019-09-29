Program Den;
var k1,g1,m1,k2,g2,m2:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(k1,g1,m1,k2,g2,m2);
if (k1-(k1 div 100)*g1)>(k2-(k2 div 100)*g2)

     then write(((k1-(k1 div 100)*g1)-(k2-(k2 div 100)*g2))*m1 + (k1 div 100)*g1*m1 + (k2 div 100)*g2*m2 )

           else write(((k2-(k2 div 100)*g2)-(k1-(k1 div 100)*g1))*m2 + (k1 div 100)*g1*m1 + (k2 div 100)*g2*m2 );



end.
