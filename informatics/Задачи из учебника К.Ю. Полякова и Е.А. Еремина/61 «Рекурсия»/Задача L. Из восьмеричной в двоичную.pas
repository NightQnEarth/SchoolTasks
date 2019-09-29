Program Den;
var
  s:string;
  i, f:longint;
  
procedure oct(s:char);
begin

  case s of
    '0': write('000');
    '1': write('001');
    '2': write('010');
    '3': write('011');
    '4': write('100');
    '5': write('101');
    '6': write('110');
    '7': write('111');
  end;
end;

procedure oct1(s:char);
begin

  case s of
    '0': write('0');
    '1': write('1');
    '2': write('10');
    '3': write('11');
  end;
end;
    
begin

  read(s); f:= 0;

  if s[1] = '-' then
    begin
      for i:= 1 to length(s) - 1 do
        s[i]:= s[i+1];
      write('-');
      f:= 1;
    end;
    
  for i:= 1 to length(s) - f do
    if (i = 1) and (s[i] <> '4') and (s[i] <> '5') and (s[i] <> '6') and (s[i] <> '7') then
      oct1(s[i])
    else
      oct(s[i]);

end.