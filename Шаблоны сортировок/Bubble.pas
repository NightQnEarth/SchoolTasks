procedure bubble(L, R:longint);
var
  i, j, t:longint;
begin

  for i:= L to R - 1 do
    for j:= R - 1 downto i do
      if a[j+1] < a[j] then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t
        end
        
end;