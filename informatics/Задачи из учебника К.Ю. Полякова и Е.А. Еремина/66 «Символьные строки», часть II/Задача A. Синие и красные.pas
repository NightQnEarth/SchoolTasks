Program Den;
var
  s:string;
  i, j, k:longint;
begin

  read(s);

  i:= 1;

  k:= 0;

  while(i < length(s)) and (s[i] = 'B') do
    i:= i + 1;

  j:= i + 1;
  
  while j <= length(s) do
    if s[j] = 'B' then
      begin
        delete(s, j, 1);
        k:= k + 1
      end
    else
      j:= j + 1;

  writeln(s);

  write(k)
end.