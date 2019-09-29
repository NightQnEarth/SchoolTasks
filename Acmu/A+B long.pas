Program Den;
var
  a, b:array [1..101] of integer;
  s1, s2:string;
  i, len, c:integer;
  input, output:text;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  readln(input, s1);
  read(input, s2);
  
  for i:= 1 to length(s1) do
    a[length(s1)-i+1]:= Ord(s1[i]) - 48;
    
  for i:= 1 to length(s2) do
    b[length(s2)-i+1]:= Ord(s2[i]) - 48;
    
  if length(s1) > length(s2) then
    len:= length(s1)
  else
    len:= length(s2);
    
  c:= 0;
    
  for i:= 1 to len do
    begin
      c:= c + a[i] + b[i];
      a[i]:= c mod 10;
      c:= c div 10
    end;
    
  if c <> 0 then
    begin
      len:= len + 1;
      a[len]:= c
    end;
    
  for i:= len downto 1 do
    write(output, a[i]);
    
  Close(input);
  Close(output)
    
end.