Program Den;
var
  X, N, i:longint;
  a:array [1..10000] of longint;
begin

  read(X,N);

    for i:=1 to N do
      begin
        a[i]:= X + N - 1;
        write(a[i],' ');
        X:= X - 1;
      end;

end.