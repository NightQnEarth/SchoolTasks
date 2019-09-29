Program Den;
var
  N{, s}:longint;
{begin

  read(N);

  s:=0;

  while N <> 0 do

    begin

      s:= s + (N mod 10);

      N:=N div 10;

    end;

  write(s);

end.}

function sum(N:longint):longint;
var
  s: longint;
begin

  s:= 0;

  if N = 0 then
    begin
      sum:= s;
      exit
    end;

  s:= N mod 10;
      
  N:= N div 10;
      
  sum:= sum(N) + s;
      
end;

begin

  read(N);
  
  write(sum(N));
  
end.
    
    
    
    
    
    
    
    
    