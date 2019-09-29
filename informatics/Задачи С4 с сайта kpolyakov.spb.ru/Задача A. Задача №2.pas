Program Den;
var
  c:char;
  i, max, maxi:integer;
  a:array [1..26] of longint;
begin

  for i:= 1 to 26 do
    a[i]:= 0;

  while c <> '.' do
    begin
      read(c);
      if ((c >= 'a') and (c <='z')) or ((c >= 'A') and (c<='Z')) then
        begin
          c:= Upcase(c);
          a[Ord(c) - Ord('A') + 1]:= a[Ord(c) - Ord('A') + 1] + 1
        end
    end;
    
  max:= 0;
    
  for i:= 1 to 26 do
    if a[i] > max then
      begin
        max:= a[i];
        maxi:= i + Ord('A') - 1;
      end;
  if max <> 0 then
    write(Chr(maxi),' ',max)

end.