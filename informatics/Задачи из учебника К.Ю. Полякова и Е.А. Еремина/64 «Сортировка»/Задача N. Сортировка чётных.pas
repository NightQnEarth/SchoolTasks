Program Den;
var
  a, b, c:array[1..100000] of longint;
  i, N, h, j, v:longint;
  
procedure Quicsort(var nStart, nEnd:longint);
var
  t, L, R, X:longint;
begin

  if nStart < nEnd then
    begin
    
      L:= nStart; R:= nEnd;
      
      X:= b[random(R - L + 1) + L];
      
      while L <= R do
        begin
        
          while b[L] < X do
            L:= L + 1;
            
          while b[R] > X do
            R:= R - 1;
            
          if L <= R then
            begin
              t:= b[L];
              b[L]:= b[R];
              b[R]:= t;
              L:= L + 1; R:= R - 1;
            end;
        end;
        
      Quicsort(nStart, R);
      
      Quicsort(L, nEnd);
      
    end;
end;
  
begin

  read(N);
  
  for i:= 1 to N do
    begin
      read(a[i]);
      if a[i] mod 2 <> 0 then
        begin
          h:= h + 1;
          b[h]:= a[i];
          c[h]:= i;
        end;
    end;
    
  j:= 1;
  
  Quicsort(j, h);
  
  for i:= 1 to h do
    a[c[i]]:= b[i];
    
  for i:= 1 to N do
    write(a[i],' ');
    
end.