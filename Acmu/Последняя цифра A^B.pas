Program Den;
var A,B,i:longint; b1:array[1..10000] of longint; b2:array[1..10000] of longint; b3:array[1..10000] of longint;  b4:array[1..10000] of longint;
begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
read(A,B);

for i:=1 to 10000 do begin

b1[i]:=1+4*(i-1); b2[i]:=2+4*(i-1); b3[i]:=3+4*(i-1); b4[i]:=4+4*(i-1); end;

if A mod 10 =0 then write(0) else

if B=0 then write(1) else

if A mod 10 = 1 then write(1) else

if A mod 10 = 2 then begin
   for i:=1 to 10000 do begin
   if B=b1[i] then write(2) else
   if B=b2[i] then write(4) else
   if B=b3[i] then write(8) else
   if B=b4[i] then write(6) end; end else
   
if A mod 10 = 3 then begin
   for i:=1 to 10000 do begin
   if B=b1[i] then write(3) else
   if B=b2[i] then write(9) else
   if B=b3[i] then write(7) else
   if B=b4[i] then write(1) end; end else
   
if A mod 10 = 4 then begin
   if B mod 2 = 0 then write(6) else write(4) end else


   
if A mod 10 = 5 then write(5) else
   
if A mod 10 = 6 then write(6) else

if A mod 10 = 7 then begin
   for i:=1 to 10000 do begin
   if B=b1[i] then write(7) else
   if B=b2[i] then write(9) else
   if B=b3[i] then write(3) else
   if B=b4[i] then write(1) end; end else
   
if A mod 10 = 8 then begin
   for i:=1 to 10000 do begin
   if B=b1[i] then write(8) else
   if B=b2[i] then write(4) else
   if B=b3[i] then write(2) else
   if B=b4[i] then write(6) end; end else

if A mod 10 = 9 then
   if B mod 2 = 0 then write(1) else write(9);
   
   end.