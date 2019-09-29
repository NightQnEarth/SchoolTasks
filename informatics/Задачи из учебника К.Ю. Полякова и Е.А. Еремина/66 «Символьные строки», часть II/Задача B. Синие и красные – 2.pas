Program Den;
var
  s:string;
  i, j, k:longint;
begin

  read(s);

  i:= length(s);

  k:= 0;

  while(i > 1) and (s[i] = 'R') do
    i:= i - 1;

  j:= i - 1;
  
  while j >= 1 do
    if s[j] = 'R' then
      begin
        delete(s, j, 1);
        k:= k + 1
      end
    else
      j:= j - 1;

  writeln(s);

  write(k)
end.