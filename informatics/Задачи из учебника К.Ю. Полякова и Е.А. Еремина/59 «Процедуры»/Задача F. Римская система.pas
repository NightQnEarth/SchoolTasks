Program Den;
var
  N, h, d, m, g, i:longint;

procedure Rim1(h:longint);
begin

  case h of
    1:  write('I');
    2:  write('II');
    3:  write('III');
    4:  write('IV');
    5:  write('V');
    6:  write('VI');
    7:  write('VII');
    8:  write('VIII');
    9:  write('IX');
    
  end;
  
end;

procedure Rim2(h:longint);
begin

  case h of
    1:  write('X');
    2:  write('XX');
    3:  write('XXX');
    4:  write('XL');
    5:  write('L');
    6:  write('LX');
    7:  write('LXX');
    8:  write('LXXX');
    9:  write('XC');

  end;

end;

procedure Rim3(h:longint);
begin

  case h of
    1:  write('C');
    2:  write('CC');
    3:  write('CCC');
    4:  write('CD');
    5:  write('D');
    6:  write('DC');
    7:  write('DCC');
    8:  write('DCCC');
    9:  write('CM')

  end;

end;

procedure Rim4 (h:longint);
begin

  case h of
    1:  write('M');
    2:  write('MM');
    3:  write('MMM');

  end;

end;


begin

  read(N);

  h:= N; m:= 0;

  while h <> 0 do
    begin
      h:= h div 10;
      m:= m + 1;
    end;

  while m <> 0 do
    begin

      d:= 1;

      for i:= 1 to m - 1 do
        d:= d * 10;

      h:= N div d;

      N:= N mod d;

      if m = 1 then
        Rim1(h)
      else
      if m = 2 then
        Rim2(h)
      else
      if m = 3 then
        Rim3(h)
      else
        Rim4(h);

      m:= m - 1;

    end;

end.