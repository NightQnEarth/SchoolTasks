Program Den2;
var
  i, N, k, j, t:longint;
  a:array [1..10000] of longint;
begin

  read(N);
  
  randomize;
  
  for i:=1 to N do
    a[i]:= i;
    
  for i:=1 to N do
    begin
      k:= random(N) + 1;
      j:= random(N) + 1;
      t:= a[k];
      a[k]:= a[j];
      a[j]:= t;
    end;
    
  for i:=1 to N do
    write(a[i],' ');
    
end.