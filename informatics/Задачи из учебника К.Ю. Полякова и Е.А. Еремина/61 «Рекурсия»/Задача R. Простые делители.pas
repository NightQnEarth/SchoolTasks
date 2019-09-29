Program Den;
var
  N, k, i:longint;

procedure del(N, k, i:longint);
begin

  if N = 1 then
    exit;
    
  if N mod i <> 0 then
    i:= i + 1
  else
    begin
      N:= N div i;
      write(i,' ');
    end;
    
  del(N, k, i);
  
end;

begin

  read(N);
  
  if N = 1 then
    write(1)
  else
    begin
  
      k:= 0;
  
      i:= 2;
  
      del(N, k, i)
      
    end;
  
end.