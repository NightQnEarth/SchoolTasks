Program Den;
var
  N:longint;
  
procedure print(m:longint);
begin

  case m of
    0..9:  write(m);
    10:  write('A');
    11:  write('B');
    12:  write('C');
    13:  write('D');
    14:  write('E');
    15:  write('F');
    
  end;
  
end;

procedure hex (N:longint);
var i, g, h, m:longint;
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
    g:= g * 16;

  h:= g;

  while g <> 0 do
    begin

      if (g < h) or (h = N) then
        begin
          m:= N div g;
          print(m);
        end;

      N:= N mod g;

      g:= g div 16;

    end;

end;

begin

  read(N);

  hex(N);

end.