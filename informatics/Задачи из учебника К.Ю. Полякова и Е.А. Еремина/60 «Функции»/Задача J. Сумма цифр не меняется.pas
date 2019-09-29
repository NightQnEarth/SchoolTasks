Program Den;
var
  a, b, i, j, f:longint;

function sum(n:longint):longint;
var
  g, s:longint;
begin

  g:= n; s:= 0;

  while g <> 0 do
    begin
      s:= s + g mod 10;
      g:= g div 10;
    end;

  sum:= s;
end;

begin

  read(a,b);

  for i:= a to b do
    begin
      f:= 1;
      j:= 2;
      while (j <= 9) and (f = 1) do
        begin
          if sum(i) <> sum(i * j) then
            f:= 0;
          j:= j + 1;
        end;

      if f = 1 then
        write(i,' ');
    end;
end.