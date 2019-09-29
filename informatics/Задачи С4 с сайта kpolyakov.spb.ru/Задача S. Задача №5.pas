Program Den;
var
  a:array [1..250] of string;
  i, N, j, b, sum, c, max, D:longint;
  ss, name, s:string;
begin

  readln(N);

  max:= 0;

  D:= 0;

  for i:= 1 to N do
    begin

      readln(s);

      name:= ''; sum:= 0;

      name:= name + copy(s, 1, pos(' ', s));

      delete(s, 1, pos(' ', s));

      name:= name + copy(s, 1, pos(' ', s) - 1);

      delete(s, 1, pos(' ', s));

      val(copy(s, 1, pos(' ', s)-1), b, c);

      delete(s, 1, pos(' ', s));

      sum:= sum + b;

      val(copy(s, 1, pos(' ', s)-1), b, c);

      delete(s, 1, pos(' ', s));

      sum:= sum + b;

      val(copy(s, 1, length(s)), b, c);

      sum:= sum + b;

      if sum = max then
        begin
          D:= D + 1;

          a[D]:= name
        end
      else
      if sum > max then
        begin
          for j:= 2 to D do
            a[j]:= '';
          D:= 1;

          max:= sum;

          a[1]:= name
        end

    end;

  for i:= 1 to D do
    writeln(a[i])

end.