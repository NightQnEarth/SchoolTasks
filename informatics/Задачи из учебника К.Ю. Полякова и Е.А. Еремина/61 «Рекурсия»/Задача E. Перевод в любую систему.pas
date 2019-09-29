Program Den;
var
  N, B:longint;

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
    16:  write('G');
    17:  write('H');
    18:  write('I');
    19:  write('J');
    20:  write('K');
    21:  write('L');
    22:  write('M');
    23:  write('N');
    24:  write('O');
    25:  write('P');
    26:  write('Q');
    27:  write('R');
    28:  write('S');
    29:  write('T');
    30:  write('U');
    31:  write('V');
    32:  write('W');
    33:  write('X');
    34:  write('Y');
    35:  write('Z');

  end;

end;

procedure hex (N, B:longint);
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
    g:= g * B;

  h:= g;

  while g <> 0 do
    begin

      if (g < h) or (h = N) then
        begin
          m:= N div g;
          print(m);
        end;

      N:= N mod g;

      g:= g div B;

    end;

end;

begin

  read(N, B);

  hex(N, B);

end.