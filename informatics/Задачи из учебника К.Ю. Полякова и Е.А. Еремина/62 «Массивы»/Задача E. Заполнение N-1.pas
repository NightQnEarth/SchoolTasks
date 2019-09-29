Program Den;
var
  N, i:longint; a:array [1..10000] of longint;
begin

  read(N);
  
  for i:=N downto 1 do
    begin
      a[i]:=i;
      write(a[i],' ');
    end;

end.