Program Den;
var
  N:longint;
  f:boolean;
procedure rev(N:longint;
          var f:boolean);
begin

  read(N);

  if N = 0 then
    exit;

  rev(N, f);
  
  if frac(sqrt(N)) = 0 then
    begin
      write(N,' ');
      f:= false;
    end;

end;

begin

f:= true;

rev(N, f);

if f then
  write(0);

end.