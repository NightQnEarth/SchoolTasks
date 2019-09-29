Program Den;
var
  N, i:longint;
begin

  read(N);
  
  i:=2;

  while N>0 do
    begin
      write(i,' ');
      inc(i,2);
      dec(N);
    end;
end.
    