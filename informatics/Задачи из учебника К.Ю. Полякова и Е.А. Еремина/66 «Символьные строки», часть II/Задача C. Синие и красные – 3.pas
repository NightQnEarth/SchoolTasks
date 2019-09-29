Program Den;
var
  s:string;
  i, j1, j2, k, k1, k2:longint;
  
function proverka(a, b:longint):boolean;
begin
  
  while s[a] = 'B' do
    a:= a + 1;
    
  while s[b] = 'R' do
    b:= b - 1;

  if a = b + 1 then
    proverka:= false
  else
    proverka:= true
end;

begin

  read(s);

  i:= length(s);

  k1:= 0; k2:= 0;

  while (i > 1) and (s[i] = 'R') do
    i:= i - 1;
    
  j2:= i;
  
  i:= 1;
  
  while (i < length(s)) and (s[i] = 'B') do
    i:= i + 1;
    
  j1:= i;

  while (j1 < j2) and proverka(j1, j2) do
    begin
    
      while s[j1] <> 'R' do
        j1:= j1 + 1;

      delete(s, j1, 1);
      k1:= k1 + 1;
      
      for i:= j2 downto j1 do
        if s[i] = 'B' then
          begin
            j2:= i;
            delete(s, j2, 1);
            k2:= k2 + 1;
            break
          end
    end;

  if k1 > k2 then
    begin
      for i:= 1 to k1 - k2 do
        delete(s, 1, 1);
      k:= k1 * 2
    end
  else
  if k2 > k1 then
    begin
      for i:= 1 to k2 - k1 do
        delete(s, pos('R', s), 1);
      k:= k2 * 2
    end
  else
    k:= k1 + k2;
        
  writeln(s);

  write(k)
end.