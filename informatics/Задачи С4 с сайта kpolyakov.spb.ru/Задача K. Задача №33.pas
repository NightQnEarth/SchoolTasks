Program Den;
var
  N, i, sc, b, max, j, max2:integer;
  a:array [1..99] of integer;
  c:char;
  input:text;
begin

  Assign(input, 'input.txt'); reset(input);

  readln(input, N);
  
  for i:= 1 to 99 do
    a[i]:= -1;
  
  max:= -1;
  
  c:='a';
  
  for i:= 1 to N do
    begin
    
      while c <> ' ' do
        read(input, c);
        
      read(input, c);
        
      while c <> ' ' do
        read(input, c);
        
      readln(input, sc, b);
      
      c:='a';

      if b > max then
        begin
          max:= b;
          for j:= 1 to 99 do
            a[j]:= -1;
          a[sc]:= 1
        end
      else
      if b = max then
        begin
          if a[sc] = -1 then
            a[sc]:= 1
          else
            a[sc]:= a[sc] + 1
          end
    end;
    
  max2:= -1;
    
  for i:= 1 to 99 do
    if a[i] > max2 then
      max2:= a[i];
      
 for i:= 1 to 99 do
   if a[i] = max2 then
     write(i,' ');
      
  Close(input)
end.