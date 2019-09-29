Program Den;
var
  N:longint;

function sov(N:longint):boolean;
var
  i, sum:longint;
begin
  sum:= 0; i:= 1;
  
  if N mod 2 <> 0 then
    while i <= N div 2 do
      begin
        if N mod i = 0 then
          sum:= sum + i;
        i:= i + 2;
      end
  else
    for i:= 1 to N div 2 do
      if N mod i = 0 then
        sum:= sum + i;
    
  sov:= (sum = N);
end;

begin

  read(N);
  
  if sov(N) then
    write('YES')
  else
    write('NO');

end.