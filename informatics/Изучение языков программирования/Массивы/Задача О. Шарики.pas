Program Den;
var
  a, b:array [1..1000] of longint;
  i, N, k, j, g, sum, h, t:longint;
  f:boolean;
 
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);

  f:= true;
  
  sum:= 0;
  
  while f do
    begin
    
      i:= 1; k:= 1;
        
      while (i < N - sum) and (k <> 3)  do
        begin
        
          if(a[i] = a[i+1]) then
            k:= k + 1
          else
            k:= 1;

          i:= i + 1;
        end;

      if k = 3 then
        begin
          f:= true;

          j:= i - 2;
          
          while (a[i] = a[i+1]) and (i < N - sum) do
            begin
              k:= k + 1;
              i:= i + 1
            end;

          h:= 0;
          
          for g:= i + 1 to N - sum do
            begin
              h:= h + 1;
              b[h]:= a[g]
            end;
            
          t:= 0;
          
          for g:= j to j + h - 1 do
            begin
              t:= t + 1;
              a[g]:= b[t]
            end;

          sum:= sum + k;
          
        end
      else
        f:= false
    end;

  write(sum)
    
end.