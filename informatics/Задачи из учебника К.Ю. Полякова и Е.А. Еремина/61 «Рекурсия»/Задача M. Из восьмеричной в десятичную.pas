Program Den;
var
  N, i, d, sum:longint;

procedure dec(N, sum, d:longint);
begin

  if N = 0 then
    begin
      write(sum);
      exit;
    end;

  sum:= sum + N mod 10 * d;

  dec(N div 10, sum, d * 8);

end;
  
begin

  read(N);

  if N < 0 then
    begin
      N:= abs(N);
      write('-');
    end;

  d:= 1; sum:= 0;
    
  dec(N, sum, d);
  
end.