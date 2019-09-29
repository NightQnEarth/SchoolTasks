Program Den;
var
  N, max, k:longint;

procedure m(N, max:longint;
      var k: longint);
begin
  read(N);

  if N = 0 then
    exit;

  if N > max then
    begin
      max:= N;
      k:= 1
    end
  else
  if N = max then
    k:= k + 1;

  m(N, max, k);

end;

begin

  read(N); k:= 1;

  if N <> 0 then
    begin
      max:= N;
      m(N, max, k);
    end;

  write(k);

end.