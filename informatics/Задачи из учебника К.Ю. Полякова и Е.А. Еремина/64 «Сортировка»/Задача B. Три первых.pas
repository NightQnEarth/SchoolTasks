Program Den;
var
  a:array [1..10000] of longint;
  i, t, j, N, g, min:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);

  if N = 1 then
    write(a[N])
  else
  if N = 2 then
    begin
      if a[1] < a[2] then
        write(a[1],' ',a[2])
      else
        write(a[2],' ',a[1]);
    end
  else
    begin
      for j:= 1 to 3 do
        begin
      
          min:= a[j];
          g:= j;
        
          for i:= j to N do
            if a[i] < min then
              begin
                min:= a[i];
                g:= i;
              end;
          
          if g <> j then
            begin
              t:= a[g];
          
              for i:= g downto j + 1 do
                a[i]:= a[i-1];

              a[j]:= t;
          
            end;
      
        end;
        
      for i:= 1 to N do
        write(a[i],' ');
    end;
    
          
end.


    
    
      
      
      