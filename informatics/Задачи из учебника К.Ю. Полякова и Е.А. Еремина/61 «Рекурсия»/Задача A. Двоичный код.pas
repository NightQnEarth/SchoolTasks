Program Den;
var
  N:longint;

procedure bin (N:longint);
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
    g:= g * 2;

  h:= g;

  while g <> 0 do
    begin

      if (g < h) or (h = N) then
        write(N div g);

      N:= N mod g;

      g:= g div 2;

    end;

end;

begin

  read(N);

  bin(N);

end.