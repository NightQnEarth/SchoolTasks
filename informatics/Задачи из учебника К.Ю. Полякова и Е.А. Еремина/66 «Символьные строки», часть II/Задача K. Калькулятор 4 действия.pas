Program Den;
var
  s, ss:string;
  i, a, b, c, k1, k2, sum:longint;
  f:boolean;
  
procedure num(s:string);
begin

  while (s[i] <> '+') and (s[i] <> '-') and (i <= length(s)) do
    i:= i + 1;

  i:= i - 1

end;
  
begin

  read(s);
  
  while (pos('*', s) <> 0) or (pos('/', s) <> 0) do
    begin
      f:= true; i:= 2;
  
      while f and (i < length(s)) do
        if (s[i] = '*') or (s[i] = '/') then
          f:= false
        else
          i:= i + 1;
      
      k1:= i;
  
      f:= true; i:= i + 1;

      while f and (i <= length(s)) do
        if (s[i] = '*') or (s[i] = '/') or (s[i] = '-') or (s[i] = '+') then
          f:= false
        else
          i:= i + 1;
      
      k2:= i - 1;  i:= k1 - 1;
      
      f:= true;
  
      while f and (i >= 1) do
        if (s[i] = '*') or (s[i] = '/') or (s[i] = '-') or (s[i] = '+') then
          f:= false
        else
          i:= i - 1;

      i:= i + 1;
          
      val(copy(s, i, k1 - 1), a, c);
      
      val(copy(s, k1 + 1, k2 ), b, c);
      
      if s[k1] = '*' then
        c:= a * b
      else
        c:= a div b;
        
      str(c, ss);
      
      delete(s, i, k2 - i + 1);
      
      insert(ss, s, i);
      
    end;
    
  i:= 1;

  sum:= 0;

  num(s);

  val(copy(s, 1, i), a, c);

  sum:= sum + a;

  delete(s, 1, i);

  while length(s) <> 0 do
    if s[1] = '+' then
      begin

        delete(s, 1, 1);

        i:= 1; num(s);

        val(copy(s, 1, i), a, c);

        sum:= sum + a;

        delete(s, 1, i)
      end
    else
    if s[1] = '-' then
      begin

        delete(s, 1, 1);

        i:= 1; num(s);

        val(copy(s, 1, i), a, c);

        sum:= sum - a;

        delete(s, 1, i)
      end;

    
  write(sum)
  
end.