Program Den;
var
  s, s2, d:string;
  i, N, K, M, B, f, a, c, t:longint;
begin

  readln(K, M, B);

  readln(N);

  t:= 0;

  for i:= 1 to N do
    begin
      readln(s);

      d:= copy(s, 1, pos(' ',s));

      delete(s, 1, pos(' ',s));

      d:= d + copy(s, 1, pos(' ',s));

      delete(d, length(d), 1);

      delete(s, 1, pos(' ',s));

      s2:= copy(s, 1, pos(' ',s));

      delete(s2, length(s2), 1);

      delete(s, 1, pos(' ',s));

      val(s2, a, f); val(s, c, f);

      if ((a >= K) and (a <= M)) and (c = B) then
        begin
          writeln(d);
          t:= t + 1
        end
    end;

  write(t)

end.