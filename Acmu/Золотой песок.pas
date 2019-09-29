Program Den;
var A1,A2,A3,B1,B2,B3,maxA,minA,maxB,minB,srA,srB:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
maxA:=0; maxB:=0; minA:=0; minB:=0; srA:=0; srB:=0;
read(A1,A2,A3,B1,B2,B3);
if A1>A2 then maxA:=A1 else maxA:=A2;
if A3>maxA then maxA:=A3;

if A1<A2 then minA:=A1 else minA:=A2;
if A3<minA then minA:=A3;

if      ((A1=minA) and (A2=maxA)) or ((A2=minA) and (A1=maxA))  then srA:=A3
else if ((A1=minA) and (A3=maxA)) or ((A3=minA) and (A1=maxA)) then srA:=A2
else if ((A2=minA) and (A3=maxA)) or ((A3=minA) and (A2=maxA)) then srA:=A1;

if B1>B2 then maxB:=B1 else maxB:=B2;
if B3>maxB then maxB:=B3;

if B1<B2 then minB:=B1 else minB:=B2;
if B3<minB then minB:=B3;

if      ((B1=minB) and (B2=maxB)) or ((B2=minB) and (B1=maxB))  then srB:=B3
else if ((B1=minB) and (B3=maxB)) or ((B3=minB) and (B1=maxB)) then srB:=B2
else if ((B2=minB) and (B3=maxB)) or ((B3=minB) and (B2=maxB)) then srB:=B1;

write( maxA * maxB + minA*minB + srA*srB );
end.