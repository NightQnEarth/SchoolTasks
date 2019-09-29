Program Den;
var
  a:array [1..100, 1..2] of real;
  i, N, t, b, sc, c:integer;
  j:byte;
  sum:longint;
  s:string;
begin

  readln(N);

  for i:= 1 to 100 do
    for j:= 1 to 2 do
      a[i,j]:= 0;
      
  sum:= 0;
  
  for i:= 1 to N do
    begin
      readln(s);

      delete(s, 1, pos(' ',s));

      delete(s, 1, pos(' ',s));

      val(copy(s, 1, pos(' ',s) - 1), sc, c);

      delete(s, 1, pos(' ',s));

      val(s, b, c);
      
      sum:= sum + b;

      if (sc > 0) and (sc < 101) then
        begin
          if a[sc,2] = 0 then
            begin
              a[sc,2]:= 1;
              a[sc,1]:= b
            end
          else
            begin
              a[sc,1]:= (a[sc,1] * a[sc,2] + b) / (a[sc,2] + 1);
              a[sc,2]:= a[sc,2] + 1
            end
        end
    end;

  t:= 0;

  for i:= 1 to 100 do
    if a[i,1] > sum / N then
      begin
        t:= t + 1;
        write(i,' ')
      end;

  if t = 1 then
    begin
      writeln;
      write(sum / N)
    end

end.