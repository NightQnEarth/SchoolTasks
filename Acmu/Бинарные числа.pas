Program Den;
var N,i,k:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

read(N);

k:=0;

i:=1;
if N= 1 then write('YES') else begin

while i < N do begin
i:=i*2; if i = N then k:=1; end;

if k = 1 then write('YES') else write('NO');
end;
 
end.

