Program Den;
var K,W,a1,b1,a2,b2,a3,b3:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(K,W,a1,b1,a2,b2,a3,b3);

if ((W>=a1) and (K<=b1)) or ((W>=a2) and (K<=b2)) or ((W>=a3) and (K<=b3)) or

((W>=a1+a2) and (K<=b1+b2)) or ((W>=a1+a3) and (K<=b1+b3)) or ((W>=a2+a3) and (K<=b2+b3)) or ((W>=a1+a2+a3) and (K<=b1+b2+b3)) then write('YES') else write('NO');

end.