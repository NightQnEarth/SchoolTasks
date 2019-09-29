Program Den;
var
  N:real;

procedure bin(N:real);
begin

  if frac(N) > 0 then
    begin
      write('NO');
      exit
    end;

  if N = 1 then
    begin
      write('YES');
      exit
    end;

  bin(N / 2);
end;

begin

  read(N);

  bin(N);

end.