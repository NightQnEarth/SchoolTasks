Program Den;
var
  N, i, f:longint;
begin

  read(N);
  
  f:=1;
  
  for i:=2 to N do
    f:=f*i;
    
  write(f);
  
end.