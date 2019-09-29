Program Den;
var
  a:array [1..10000] of longint;
  N, i, k:longint;
begin

  read(N);
  
  k:= 0;
  
  for i:= 1 to N do
    begin
      read(a[i]);
      if a[i] > 0 then
        k:= k + 1
    end;
    
  write(k)
  
end.
    

