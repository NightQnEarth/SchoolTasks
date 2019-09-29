Program Den;
var
  X, D, i, N:longint; a:array[1..10000] of longint;
begin

  read(X,D,N);
  
  for i:=1 to N do
    begin
      a[i]:=X + (i-1) * D;
      write(a[i],' ');
    end;
    
end.
    