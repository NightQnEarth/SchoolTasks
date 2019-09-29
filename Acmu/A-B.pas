Program Den;
var
  s1, s2:string;
  a, b:array [1..1001] of integer;
  i, c, len, t:integer;
  input, output:text;
  
function complong(s1, s2:string):integer;
var
  a, i:integer;
  f:boolean;
begin

  a:= 0;

  f:= true;
  
  if length(s1) > length(s2) then
    begin
      a:= 1;
      f:= false
    end
  else
  if length(s1) < length(s2) then
    begin
      a:= -1;
      f:= false
    end;
    
  if f then
    for i:= 1 to length(s1) do
      if s1[i] > s2[i] then
        begin
          a:= 1;
          break
        end
      else
      if s1[i] < s2[i] then
        begin
          a:= -1;
          break
        end;
        
  complong:= a
end;
  
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  readln(input, s1);
  read(input, s2);
  
  for i:= 1 to length(s1) do
    a[length(s1)-i+1]:= Ord(s1[i]) - 48;
    
  for i:= 1 to length(s2) do
    b[length(s2)-i+1]:= Ord(s2[i]) - 48;
    
  len:= length(s1);
  
  if complong(s1, s2) < 0 then
    begin
      write(output, '-');
      
      len:= length(s2);
      
      for i:= 1 to length(s2) do
        begin
          t:= a[i];
          a[i]:= b[i];
          b[i]:= t
        end
    end;
    
  c:= 0;
    
  for i:= 1 to len do
    begin
      c:= c + a[i] - b[i] + 10;
      a[i]:= c mod 10;
      if c < 10 then
        c:= -1
      else
        c:= 0
    end;
    
  while (a[len] = 0) and (len > 1) do
    len:= len - 1;
    
  for i:= len downto 1 do
    write(output, a[i]);
    
  Close(input);
  Close(output)
end.