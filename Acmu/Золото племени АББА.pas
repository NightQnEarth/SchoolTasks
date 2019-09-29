Program Den;
var
  input, output:text;
  s1, s2, s3, s:string;
  f:boolean;

function complong(m, n:string):integer;
var
  a, i:integer;
  f:boolean;
begin

  a:= 0;

  f:= true;

  if length(m) > length(n) then
    begin
      a:= 1;
      f:= false
    end
  else
  if length(m) < length(n) then
    begin
      a:= -1;
      f:= false
    end;
    
  if f then
    for i:= 1 to length(m) do
      if m[i] > n[i] then
        begin
          a:= 1;
          break
        end
      else
      if m[i] < n[i] then
        begin
          a:= -1;
          break
        end;

  complong:= a
end;

begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  read(input, s);
  
  s1:= copy(s, 1, pos(' ', s) - 1);
  
  delete(s, 1, pos(' ', s));
  
  s2:= copy(s, 1, pos(' ', s) - 1);
  
  delete(s, 1, pos(' ', s));
  
  s3:= copy(s, 1, length(s));
  
  f:= true;
  
  if complong(s1, s2) < 0 then
    f:= false;

  if f then
    begin
      if complong(s1, s3) > 0 then
        write(output, s1)
      else
        write(output, s3)
    end
  else
    if complong(s2, s3) > 0 then
      write(output, s2)
    else
      write(output, s3);
      
  Close(input);
  Close(output)
      
end.