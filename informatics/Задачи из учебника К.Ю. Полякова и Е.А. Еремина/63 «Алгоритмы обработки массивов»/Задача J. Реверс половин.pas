Program Den;
var
  a:array [1..10000] of longint;
  i, N, t, g, h:longint;
begin

  read(N);

  for i:= 1 to N do
    read(a[i]);

  i:= 1;
  g:= N;

  if N mod 4 = 0 then
    begin
    
      h:= N div 2;
      
      while i + 1 <= h do
        begin
          t:= a[i];
          a[i]:= a[h];
          a[h]:= t;
          i:= i + 1;
          h:= h - 1;
        end;
        
      h:= (N div 2) + 1;
      
      while h <= N do
        begin
          t:= a[h];
          a[h]:= a[N];
          a[N]:= t;
          h:= h + 1;
          N:= N - 1;
        end;
        
    end
  else
    begin
    
      h:= N div 2;
      
      while i <> h do
        begin
          t:= a[i];
          a[i]:= a[h];
          a[h]:= t;
          i:= i + 1;
          h:= h - 1;
        end;
        
      h:= (N div 2) + 1;
      
      while h <> N do
        begin
          t:= a[h];
          a[h]:= a[N];
          a[N]:= t;
          h:= h + 1;
          N:= N - 1;
        end;
    end;
    
  for i:= 1 to g do
    write(a[i],' ');
    
end.
    
