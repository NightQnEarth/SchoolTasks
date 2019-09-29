Program Den;
var
  a:array [0..100] of longint;
  i, N:longint;
begin

  read(N);
  
  for i:= 0 to N - 1 do
    read(a[i]);
  
  i:= 0;
  
  while i <= N - 1 do
    begin
      write(a[i],' ');
      i:= i + 2
    end
    
end.
  
  