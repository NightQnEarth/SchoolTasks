Program Den;
var
  N, s:longint;
begin

  read(N);
  
  s:=0;
  
  while N <> 0 do
  
    begin

      s:= s + (N mod 10);
      
      N:=N div 10;
      
    end;
    
  write(s);
  
end.