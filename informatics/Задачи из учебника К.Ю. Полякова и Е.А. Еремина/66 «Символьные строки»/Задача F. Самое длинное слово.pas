Program Den;
var
  s, s1:string;
  i, k, max, h:longint;
  a:array [1..10000] of longint;
  b:array [1..10000] of string;
begin

  read(s);
  
  s:= s + ' ';
  
  k:= 0; h:= 0; s1:= ' ';
  
  for i:= 1 to length(s) do
    if s[i] <> ' ' then
      begin
        k:= k + 1;
        s1:= s1 + s[i]
      end
    else
      begin
        h:= h + 1;
        a[h]:= k;
        b[h]:= s1;
        k:= 0;
        s1:= ' '
      end;
      
  max:= a[1]; k:= 1;
  
  for i:= 1 to h do
    if a[i] > max then
      begin
        max:= a[i];
        k:= i
      end;
      
  s:= b[k];
  
  if s[1] = ' ' then
    delete(s,1,1);
      
  writeln(s);
  write(a[k])

end.