Program Den;
var
  a, b, c:longint;

function min (a, b, c:longint): longint;
var
  m:longint;
begin

  if a < b then
    m:= a
  else
    m:= b;

  if c < m then
    m:= c;

  min:= m;

end;

begin

  read(a, b, c);

  write(min(a, b, c));

end.