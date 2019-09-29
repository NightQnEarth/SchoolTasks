Program Den;
var
  a:array [1..100] of longint;
  i, N, S, j, t:longint;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  read(N, S);
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    for j:= N - 1 downto i do
      if a[j+1] < a[j] then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t
        end;
        
  i:= 0; t:= 0;
  
  while (t < S) and (i < N) do
    begin
      i:= i + 1;
      
      t:= t + a[i]
    end;
    
  if t > S then
    write(i - 1)
  else
    write(i)
end.