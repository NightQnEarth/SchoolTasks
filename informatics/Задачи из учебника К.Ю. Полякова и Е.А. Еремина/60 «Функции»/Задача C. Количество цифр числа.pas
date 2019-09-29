Program Den;
var
  N:longint;

function col(N:longint):longint;
var
  k:longint;
begin
  k:= 0;

  while N <> 0 do
    begin
      k:= k + 1;
      
      N:= N div 10;
    end;
    
  if k = 0 then
    col:= 1
  else
    col:= k;
end;

begin

  read(N);

  write(col(N));
  
end.