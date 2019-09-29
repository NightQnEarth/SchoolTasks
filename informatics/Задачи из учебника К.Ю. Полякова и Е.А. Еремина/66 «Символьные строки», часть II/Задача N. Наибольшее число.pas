Program Den;
var
  s:string;
  i, j, N, t:longint;
  a:array [1..10000] of byte;
begin

  read(s);
  
  N:= 0;
  
  for i:= 1 to length(s) do
    if (s[i] >= '0') and (s[i] <= '9') then
      begin
        N:= N + 1;
        a[N]:= Ord(s[i]) - 48
      end;
      
  for i:= 1 to N - 1 do
    for j:= N - 1 downto i do
      if a[j] < a[j+1] then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t
        end;

  if N = 0 then
    write(-1)
  else
  if (N > 1) and (a[2] = 0) then
    write(0)
  else
    for i:= 1 to N do
      write(a[i])
    
end.