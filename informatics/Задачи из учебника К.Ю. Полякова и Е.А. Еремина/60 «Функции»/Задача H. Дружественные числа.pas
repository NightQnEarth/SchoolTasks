Program Den;
var
  a, b:longint;

function del(N:longint):longint;
var
  i, sum:longint;
begin

  sum:= 0;

  for i:= 1 to N div 2 do
    if N mod i = 0 then
      sum:= sum + i;

  del:= sum;

end;

begin

  read(a,b);

  if  (del(a) = b) and (a = del(b)) then
    write('YES')
  else
    write('NO');

end.