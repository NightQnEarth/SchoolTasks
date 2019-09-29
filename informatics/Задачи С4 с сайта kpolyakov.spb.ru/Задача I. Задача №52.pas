Program Den;
var
  N, K, D, i, max, maxi:longint;
  a:array [0..100] of integer;
begin

  read(N);

  for i:= 1 to N do
    begin
      read(D, K);
      
      a[K mod D]:= a[K mod D] + 1
    end;
    
  max:= 0; maxi:= 0;
    
  for i:= 100 downto 1 do
    if a[i] > max then
      begin
        max:= a[i];
        maxi:= i
      end;
      
   write(maxi)
end.