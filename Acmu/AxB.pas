Program Den;
var
  s1, s2:string;
  i, j:integer;
  input, output:text;
  a, b, c:array [1..105] of integer;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  readln(input, s1);
  read(input, s2);
  
  for i:= 1 to length(s1) do
    a[length(s1)-i+1]:= Ord(s1[i]) - 48;
    
  for i:= 1 to length(s2) do
    b[length(s2)-i+1]:= Ord(s2[i]) - 48;
    
  for i:= 1 to length(s1) do
    for j:= 1 to length(s2) do
      begin
        c[i+j-1]:= c[i+j-1] + (a[i] * b[j]);
        c[i+j]:= c[i+j] + c[i+j-1] div 10;
        c[i+j-1]:= c[i+j-1] mod 10
      end;
      
  i:= length(s1) + length(s2);
      
  while (c[i] = 0) and (i > 1) do
    i:= i - 1;
    
  for j:= i downto 1 do
    write(output, c[j]);
    
  Close(input);
  Close(output)
end.