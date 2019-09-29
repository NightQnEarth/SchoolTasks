Program Den;
var
  X, D, N, i:longint;
  a:array [1..10000] of longint;
begin

  read(X,D,N);
  
  for i:= 1 to N do
    begin
      a[i]:= X + (N - 1) * D;
      write(a[i],' ');
      N:=N-1;
    end;

end.