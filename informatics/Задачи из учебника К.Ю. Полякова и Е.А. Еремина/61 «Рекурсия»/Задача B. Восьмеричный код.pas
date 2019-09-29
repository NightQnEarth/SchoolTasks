Program Den;
var
  N:longint;

procedure oct (N:longint);
var i, g, h:longint;
begin

  g:= 1;

  if N < 0 then
    begin
      write('-');
      N:= abs(N);
    end
  else
  if N = 0 then
    write(0);

  while g < N do
    g:= g * 8;

  h:= g;

  while g <> 0 do
    begin

      if (g < h) or (h = N) then
        write(N div g);

      N:= N mod g;

      g:= g div 8;

    end;

end;

begin

  read(N);

  oct(N);

end.