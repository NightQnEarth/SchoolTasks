Program Den;
var
  N, i, k, s:longint;
begin

  read(N);
  
  s:=1;
  
  for i:=2 to N div 2 do
    if N mod i = 0 then
      s:=s+i;

  if N = s then
    begin
      for i:=1 to N div 2 do
        if N mod i = 0 then
          write(i,' ');
    end
  else
    write(0);
    
end.
        