Program Den;
var
  N:longint;

function gippro(N:longint):boolean;
var
  i, f:longint;
begin

  f:= 0;

  if N mod 2 = 0 then
    gippro:= (f = 1)
  else
    begin

      while (N <> 0) and (f = 0) do
        if (N = 1) or ((N mod 2 = 0) and (N > 2)) then
          f:= 1
        else
          begin
            i:= 3;

            while (i * i <= N) and (f = 0) do
              if N mod i = 0 then
                f:= 1
              else
                i:= i + 2;

            N:= N div 10;
          end;

      gippro:= (f = 0);
    end;
end;

begin

  read(N);

  if gippro(N) then
    write('YES')
  else
    write('NO');

end.