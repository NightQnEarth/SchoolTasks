Program Den;
var
  N, i, d, sum, SI:int64;

procedure dec(N, sum, d:int64);
begin

  if N = 0 then
    begin
      write(sum);
      exit;
    end;

  sum:= sum + N mod 10 * d;

  dec(N div 10, sum, d * SI);

end;

begin

  read(SI, N);

  if N < 0 then
    begin
      N:= abs(N);
      write('-');
    end;

  d:= 1; sum:= 0;

  dec(N, sum, d);

end.