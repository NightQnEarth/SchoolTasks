Program Den;
var
  N, i, s:longint;
begin

  read(N);
  
  s:=0;
  
  for i:= 1 to N do
    s:=s+i;
    
  write(s);
  
end.