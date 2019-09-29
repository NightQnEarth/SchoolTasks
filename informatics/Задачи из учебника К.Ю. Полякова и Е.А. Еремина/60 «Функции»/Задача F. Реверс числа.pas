Program Den;
var
  N:longint;

function rev(N:longint):longint;
var
  k, g, X, step, i:longint;
begin

  g:= N; k:= 0; step:= 1; X:= 0;

  while g <> 0 do
    begin
      g:= g div 10;
      k:= k + 1;
    end;

  while k <> 0 do
    begin

      g:= 1;

      for i:= 1 to k - 1 do
        g:= g * 10;

      k:= k - 1;

      X:= X + N div g * step;

      step:= step * 10;

      N:= N mod g;
    end;

  rev:= X;

end;

begin

  read(N);

  write(rev(N));

end.