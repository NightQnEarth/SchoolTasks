Program Den;
var
  a:array [1..100] of longint;
  N, i:longint;
begin

  read(N);
  
  for i:= 1 to N do
    begin
      read(a[i]);
      if a[i] mod 2 = 0 then
        write(a[i],' ')
    end
    
end.

  