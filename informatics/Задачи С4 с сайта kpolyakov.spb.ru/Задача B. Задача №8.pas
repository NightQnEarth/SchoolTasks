Program Den;
var
  input, output:text;
  N, i, j, c:longint;
  s, ss:string;
  a:array [10..99] of longint;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  readln(input, N);
  
  for i:= 10 to 99 do
    a[i]:= 0;
  
  for i:= 1 to N do
    begin
      readln(input, s);
      
      ss:='';
      
      for j:= length(s) - 1 to length(s) do
        ss:= ss + s[j];

      val(ss, j, c);
      
      a[j]:= a[j] + 1
    end;
    
  c:= 0;
    
  for i:= 10 to 99 do
    if a[i] <> 0 then
      c:= c + 1;
      
  write(output, N/c);
  
  Close(input);
  Close(output)
end.