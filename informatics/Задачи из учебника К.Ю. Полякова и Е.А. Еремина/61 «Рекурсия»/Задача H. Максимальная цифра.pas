Program Den;
var
  N:longint;
{begin

  read(N);
  
  max:= 0;
  
  while N <> 0 do
    begin
      if N mod 10 > max then
        max:= N mod 10;
        
      N:= N div 10;
    end;
    
  write(max);
  
end.}

function max(N: longint):longint;
var
  last, m:longint;
begin

  if N < 10 then
    max:= N
  else
    begin
    
      last:= N mod 10;
      
      m:= max(N div 10);
  
      if last > m then
        max:= last
      else
        max:= m;
        
    end;
end;

begin

read(N);

write(max(N));

end.
    