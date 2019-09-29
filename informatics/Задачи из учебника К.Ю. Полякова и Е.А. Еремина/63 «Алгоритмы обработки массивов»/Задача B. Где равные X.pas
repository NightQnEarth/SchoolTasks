Program Den;
var
  N, X, i, k:longint;
  m:array [1..10000] of longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(m[i]);

  read(X);
  
  for i:= 1 to N do
    if m[i] = X then
      begin
        write(i,' ');
        k:= 1;
      end;
      
  if k = 0 then
    write(-1);
    
end.