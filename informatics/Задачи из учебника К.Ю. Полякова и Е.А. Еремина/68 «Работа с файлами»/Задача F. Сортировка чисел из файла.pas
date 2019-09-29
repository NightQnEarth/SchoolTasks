Program Den;
var
  a:array [1..10000] of longint;
  i, j, t, N:longint;
  input, output:text;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  i:= 0;
  
  while not eof(input) do
    begin
      i:= i + 1;
      
      readln(input, a[i])
    end;
    
  N:= i;
    
  for i:= 1 to N - 1 do
    for j:= N - 1 downto i do
      if a[j+1] mod 10 < a[j] mod 10 then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t
        end;
        
  for i:= 1 to N do
    writeln(output, a[i]);
    
  Close(input);
  Close(output)
    
end.