Program Den;
var
  a, b, c, c1, b1:array [1..100000] of longint;
  i, j, h, N, v:longint;

procedure Quicksort (var nStart, nEnd:longint);
var
  R, L, X, t:longint;
begin

  if nStart < nEnd then
    begin

      L:= nStart; R:= nEnd;
  
      X:= b1[random(R - L + 1) + L];
  
      while L <= R do
        begin

          while b1[L] < X do
            L:= L + 1;
        
          while b1[R] > X do
            R:= R - 1;
        
          if L <= R then
            begin
              t:= b1[L];
              b1[L]:= b1[R];
              b1[R]:= t;
              L:= L + 1;  R:= R - 1;
            end;
        end;
        
      Quicksort(nStart, R);
      
      Quicksort(L, nEnd);
        
    end;
end;

procedure DownQuicksort (var nStart, nEnd:longint);
var
  R, L, X, t:longint;
begin

  if nStart < nEnd then
    begin

      L:= nStart; R:= nEnd;

      X:= b[random(R - L + 1) + L];

      while L <= R do
        begin

          while b[L] > X do
            L:= L + 1;

          while b[R] < X do
            R:= R - 1;

          if L <= R then
            begin
              t:= b[L];
              b[L]:= b[R];
              b[R]:= t;
              L:= L + 1;  R:= R - 1;
            end;
        end;

      DownQuicksort(nStart, R);

      DownQuicksort(L, nEnd);

    end;
end;

begin

  read(N);

  h:= 0;  v:= 0;
  
  for i:= 1 to N do
    begin
      read(a[i]);
      if i mod 2 = 0 then
        begin
          h:= h + 1;
          c[h]:= i;
          b[h]:= a[i];
        end
      else
        begin
          v:= v + 1;
          c1[v]:= i;
          b1[v]:= a[i];
        end;
    end;
    
  j:= 1;
    
  Quicksort(j, v);
  
  for i:= 1 to v do
    a[c1[i]]:= b1[i];
    
  DownQuicksort(j, h);
  
  for i:= 1 to h do
    a[c[i]]:= b[i];
    
  for i:= 1 to N do
    write(a[i],' ');
    
end.
    
    

    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
