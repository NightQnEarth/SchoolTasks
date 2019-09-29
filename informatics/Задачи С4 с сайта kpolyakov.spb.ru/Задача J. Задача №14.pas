Program Den;
var
  a:array [1..27] of longint;
  i, k1, d1, j, t, k2, d2:longint;
  c:char;
  f:boolean;
begin

  for i:= 1 to 27 do
    a[i]:= 0;

  while c <> '.' do
    begin
      read(c);
      
      if c <> '.' then
        a[Ord(c)-Ord('A')+1]:= a[Ord(c)-Ord('A')+1] + 1
    end;
    
  k1:= 0; f:= true; d2:= 0; k2:= 0; d1:= 0;
    
  for i:= 1 to 27 do
    if a[i] = 1 then
      begin
        k1:= k1 + 1;
        d1:= i
      end
    else
    if (a[i] > 1) and (a[i] mod 2 = 1) then
      begin
        k2:= k2 + 1;
        d2:= i
      end;
      
    if (k1 > 1) or (k2 > 1) or ((k1 = 1) and (k2 = 1)) then
      f:= false;

    if f then
      begin
        writeln('YES');
        
        if k2 = 1 then
          a[d2]:= a[d2] - 1;
        
        for i:= 1 to 27 do
          if a[i] > 1 then
            for j:= 1 to a[i] div 2 do
              write(Chr(i+Ord('A')-1));
          
        if d1 > 0 then
          write(Chr(d1 + Ord('A') - 1))
        else
        if d2 > 0 then
          write(Chr(d2 + Ord('A') - 1));
        
        for i:= 27 downto 1 do
          if a[i] > 1 then
            for j:= 1 to a[i] div 2 do
              write(Chr(i+Ord('A')-1));
      end
    else
      write('NO')
end.