Program Den;
var
  a:array [1..10000] of longint;
  N, i, t:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  i:= 1;
    
  while i + 1 <= N do
    begin
      t:= a[i];
      a[i]:= a[i+1];
      a[i+1]:= t;
      i:= i + 2;
    end;

  for i:= 1 to N do
    write(a[i],' ');
    
end.
    

