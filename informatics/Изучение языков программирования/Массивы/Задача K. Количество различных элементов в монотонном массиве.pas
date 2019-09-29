Program Den;
var
  a, b:array [1..10000] of longint;
  i, N, j, h:longint;
  f:boolean;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  b[1]:= a[1];
  
  h:= 1;
    
  for i:= 2 to N do
    begin
      f:= true;
      
      for j:= 1 to h do
        if a[i] = b[j] then
          f:= false;
          
      if f then
        begin
          h:= h + 1;
          b[h]:= a[i]
        end
    end;
    
  write(h)
  
end.



    
