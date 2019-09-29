Program Den;
var
  s:string;
  i, N, max, f:longint;
  a:array [1..10000] of longint;
  d:array [1..10000] of string;
begin

  readln(N);

  for i:= 1 to N do
    begin
      readln(s);

      d[i]:= copy(s, 1, pos(' ',s));

      delete(s, 1, pos(' ',s));

      d[i]:= d[i] + copy(s, 1, pos(' ',s));

      delete(d[i], length(d[i]), 1);

      delete(s, 1, pos(' ',s));

      delete(s, 1, pos(' ',s));

      val(s, a[i], f)
    end;

  max:= -1;

  for i:= 1 to N do
    if a[i] > max then
      max:= a[i];

  for i:= 1 to N do
    if a[i] = max then
      writeln(d[i]);

  write(max)
end.