Program Den;
var
  s, ss, s0, s1, x, y:string;
  i, a, b, c, k1, k2, sum, j, t, ff, k:longint;
  f, m:boolean;

procedure num(r:string);
begin

  while (r[i] <> '+') and (r[i] <> '-') and (i <= length(r)) do
    i:= i + 1;

  i:= i - 1

end;

procedure one(var g:string);
var
  w1, w2:integer;
begin

  while (pos('*', g) <> 0) or (pos('/', g) <> 0) do
    begin
      f:= true; i:= 2;

      while f and (i < length(g)) do
        if (g[i] = '*') or (g[i] = '/') then
          f:= false
        else
          i:= i + 1;

      k1:= i;

      f:= true; i:= i + 1;
      
      w1:= 1;
      
      if g[i] = '-' then
        begin
          delete(g, i, 1);
          w1:= -1
        end;

      while f and (i <= length(g)) do
        if (g[i] = '*') or (g[i] = '/') or (g[i] = '-') or (g[i] = '+')then
          f:= false
        else
          i:= i + 1;

      k2:= i - 1;  i:= k1 - 1;

      f:= true;

      while f and (i >= 1) do
        if (g[i] = '*') or (g[i] = '/') or (g[i] = '-') or (g[i] = '+') then
          f:= false
        else
          i:= i - 1;
          
      if (g[i] = '-') and (w1 = -1) then
        begin
          g[i]:= '+';
          w1:= 1
        end;

      i:= i + 1;

      val(copy(g, i, k1 - 1), a, c);

      val(copy(g, k1 + 1, k2 ), b, c);
      
      a:= a * w1;

      if g[k1] = '*' then
        c:= a * b
      else
        c:= a div b;

      str(c, ss);

      delete(g, i, k2 - i + 1);

      insert(ss, g, i);

    end
end;

procedure two(var d:string);
begin
  i:= 1;

  sum:= 0;

  num(d);

  val(copy(d, 1, i), a, c);

  sum:= sum + a;

  delete(d, 1, i);

  while length(d) <> 0 do
    if d[1] = '+' then
      begin

        delete(d, 1, 1);

        i:= 1; num(d);

        val(copy(d, 1, i), a, c);

        sum:= sum + a;

        delete(d, 1, i)
      end
    else
    if d[1] = '-' then
      begin

        delete(d, 1, 1);

        i:= 1; num(d);

        val(copy(d, 1, i), a, c);

        sum:= sum - a;

        delete(d, 1, i)
      end
end;

procedure zam(var w:string);
var
  str:string;
  v:longint;
begin

  str:= '';

  while pos('--', w) <> 0 do
    begin
      str:= str + copy(w, 1, pos('--', w) - 1);

      str:= str + '+';

      delete(w, 1,  pos('--', w) + 1)
    end;
      
  w:= str + w
end;


begin

  read(s);  k:= 0;
  
  if pos('(', s) = 0 then
    begin
      one(s);
      
      two(s);

      write(sum)
    end
  else
    begin
      while pos('(', s) <> 0 do
        begin
          for j:= length(s) downto 1 do
            if s[j] = '(' then
              break;
            
          t:= j;
        
          for j:= t + 1 to length(s) do
            if s[j] = ')' then
              break;
            
          s1:= copy(s, t + 1, j - t - 1);
       
          delete(s, t, j - t + 1);
       
          if (pos('*', s1) <> 0) or (pos('/', s1) <> 0) then
            one(s1);
           
          if (pos('+', s1) <> 0) or (pos('-', s1) <> 0) then
            begin
              zam(s1);
              two(s1);
              str(sum, s0)
            end
          else
            s0:= s1;

          insert(s0, s, t)
        end;
       
      if (pos('*', s) <> 0) or (pos('/', s) <> 0) then
        one(s);
       
      if (pos('+', s) <> 0) or (pos('-', s) <> 0) then
        begin
          zam(s);
          two(s);
          write(sum)
        end
      else
        write(s)
    end
end.