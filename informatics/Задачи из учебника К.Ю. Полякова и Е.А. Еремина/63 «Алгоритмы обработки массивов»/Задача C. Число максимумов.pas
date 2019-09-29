Program Den;
var
  N, i, max, k:longint;
  m:array [1..10000] of longint;
begin

  read(N);
  
  read(m[1]);
  
  max:= m[1];
  
  k:= 0;
  
  if N > 1 then
  
    for i:=2 to N do
      begin
        read(m[i]);
        if m[i] > max then
          max:= m[i];
      end;

  for i:= 1 to N do
    if m[i] = max then
      k:= k + 1;
      
  write(max,' ',k);
  
end.
      
      
    
