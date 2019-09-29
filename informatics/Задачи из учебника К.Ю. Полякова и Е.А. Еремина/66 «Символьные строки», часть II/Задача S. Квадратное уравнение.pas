Program Den;
var
  s:string;
  a, b, c, x1, x2:real;
  w, k, i, j:integer;
  f:boolean;
begin

  read(s);

  i:= 0;

  if s[pos('a', s) - 1] = '+' then
    begin
      a:= 1;
      delete(s, pos('a', s) - 1, 2)
    end
  else
  if pos('a', s) - 1 = 0 then
    begin
      a:= 1;
      delete(s, 1, 1)
    end
  else
  if s[pos('a', s) - 1] = '-' then
    begin
      a:= -1;
      delete(s, pos('a', s) - 1, 2)
    end
  else
  begin
    for i:= pos('a', s) - 1 downto 1 do
      if s[i] = '+' then
        begin
          j:= i + 1;
          break
        end
      else
      if s[i] = '-' then
        begin
          j:= i;
          break
        end
      else
      if i = 1 then
        j:= i;

    val(copy(s, j, pos('a', s) - j), a, w);
  end;

  if w <> 0 then
    a:= -a;

  if j = i then
    delete(s, j, pos('a', s) - j + 1)
  else
  if j = i + 1 then
    delete(s, i, pos('a', s) - i + 1);
  
  if pos('b', s) <> 0 then
    begin

      if s[pos('b', s) - 1] = '+' then
        begin
          b:= 1;
          delete(s, pos('b', s) - 1, 2)
        end
      else
      if pos('b', s) - 1 = 0 then
        begin
          b:= 1;
          delete(s, 1, 1)
        end
      else
      if s[pos('b', s) - 1] = '-' then
        begin
          b:= -1;
          delete(s, pos('b', s) - 1, 2)
        end
      else
        begin
          for i:= pos('b', s) - 1 downto 1 do
            if s[i] = '+' then
              begin
                j:= i + 1;
                break
              end
            else
            if s[i] = '-' then
              begin
                j:= i;
                break
              end
            else
            if i = 1 then
              j:= i;

          val(copy(s, j, pos('b', s) - j), b, w)
        end;

      if w <> 0 then
        b:= -b;

      if j = i then
        delete(s, j, pos('b', s))
      else
      if j = i + 1 then
        delete(s, i, pos('b', s))
    end
  else
    b:= 0;

  if length(s) <> 0 then
    val(copy(s, 1, length(s)), c, w)
  else
    c:= 0;

  x1:= (-b - sqrt(sqr(b) - 4*a*c))/(2*a);

  x2:= (-b + sqrt(sqr(b) - 4*a*c))/(2*a);

  if x1 < x2 then
    write(x1:0:3, ' ', x2:0:3)
  else
    write(x2:0:3, ' ', x1:0:3)
end.