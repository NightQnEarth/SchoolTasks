Program Den;
var
  a:array [1..10000] of longint;
  N, i, j, t, h:longint;
  f, s:boolean;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  f:= true; i:= 1; s:= true;
    
  while (i <= N - 1) and f do
    begin
    
      f:= false;
    
      for j:= N - 1 downto i do
        if a[j+1] < a[j] then
          begin
            t:= a[j];
            a[j]:= a[j+1];
            a[j+1]:= t;
            f:= true;
            s:= false;
          end;
          
      if f then
        begin
          for h:= 1 to N do
            write(a[h],' ');
          writeln;
        end;
          
      i:= i + 1;
      
    end;
    
  if s then
    for i:= 1 to N do
      write(a[i],' ');
        
end.
      
      
          
          
          
          
          
          


