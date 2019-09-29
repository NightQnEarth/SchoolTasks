Program Den;
var
  a:array [1..10000] of longint;
  i, N, t:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  t:= a[N];
  
  for i:= N downto 2 do
    a[i]:= a[i-1];
    
  a[1]:= t;

  for i:= 1 to N do
    write(a[i],' ')
    
end.
    


  
  
  