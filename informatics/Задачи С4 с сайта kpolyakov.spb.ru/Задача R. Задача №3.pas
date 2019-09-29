Program Den;
var
  a:array [1..27] of longint;
  i:byte;
  c:char;
begin

  for i:= 1 to 27 do
    a[i]:= 0;

  while c <> '.' do
    begin
      read(c);
      
      if (c >= 'a') and (c <= 'z') then
        a[Ord(c)-Ord('a')+1]:= a[Ord(c)-Ord('a')+1] + 1
    end;
    
  for i:= 1 to 27 do
    if a[i] > 0 then
      writeln( Chr(i + Ord('a') - 1),' ',a[i] )
      
end.