Program Den;
var
  s, ss:string;
  i, j, w1, w2:longint;
  b:array [1..57, 1..2] of byte;
begin

  read(s);
  
  ss:='0123456789';

  for i:= 48 to 57 do
    b[i,1]:= Ord(ss[i-48+1]);

  for i:= 1 to length(s) do
    if (s[i] >= '0') and (s[i] <= '9') then
      b[Ord(s[i]),2]:= b[Ord(s[i]),2] + 1;
      
  for i:= 48 to 56 do
    for j:= 56 downto i do
      if b[j+1,2] < b[j,2] then
        begin
          w1:= b[j,1];
          w2:= b[j,2];
          b[j,1]:= b[j+1,1];
          b[j,2]:= b[j+1,2];
          b[j+1,1]:= w1;
          b[j+1,2]:= w2
        end;

  for i:= 48 to 57 do
    if b[i,2] <> 0 then
      write(Chr(b[i,1]))
end.