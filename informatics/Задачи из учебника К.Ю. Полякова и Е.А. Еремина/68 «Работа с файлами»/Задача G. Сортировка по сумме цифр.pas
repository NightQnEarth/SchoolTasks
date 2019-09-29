Program Den;
var
  input, output:text;
  a:array [1..10000] of longint;
  i, N, t, j:longint;

function sum(b:longint):longint;
var
  s:longint;
begin

  s:= 0;

  while b <> 0 do
    begin
      s:= s + b mod 10;
      
      b:= b div 10
    end;
    
  sum:= s
end;

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
      if sum(a[j+1]) > sum(a[j]) then
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