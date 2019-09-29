Program Den;
var
  a, b1, c1, b2, c2:array[1..100000] of longint;
  N, i, h, v, j:longint;
  
procedure Quicsort1(var nStart, nEnd:longint);
var
  L, R, X, t:longint;
begin

  if nStart < nEnd then
    begin

      L:= nStart; R:= nEnd;
      
      X:= b1[random(R - L + 1) + L];
      
      while L <= R do
        begin
        
          while b1[L] > X do
            L:= L + 1;
            
          while b1[R] < X do
            R:= R - 1;
            
          if L <= R then
            begin
              t:= b1[L];
              b1[L]:= b1[R];
              b1[R]:= t;
              L:= L + 1; R:= R - 1;
            end;
        end;
        
      Quicsort1(nStart, R);
      
      Quicsort1(L, nEnd);
      
    end;
end;

procedure Quicsort2(var nStart, nEnd:longint);
var
  L, R, X, t:longint;
begin

  if nStart < nEnd then
    begin

      L:= nStart; R:= nEnd;

      X:= b2[random(R - L + 1) + L];

      while L <= R do
        begin

          while b2[L] < X do
            L:= L + 1;

          while b2[R] > X do
            R:= R - 1;

          if L <= R then
            begin
              t:= b2[L];
              b2[L]:= b2[R];
              b2[R]:= t;
              L:= L + 1; R:= R - 1;
            end;
        end;

      Quicsort2(nStart, R);

      Quicsort2(L, nEnd);

    end;
end;
  
begin

  read(N);
  
  h:= 0; v:= 0; j:= 1;
  
  for i:= 1 to N do
    begin
      read(a[i]);
      if a[i] mod 2 = 0 then
        begin
          h:= h + 1;
          b1[h]:= a[i];
          c1[h]:= i;
        end
      else
        begin
          v:= v + 1;
          b2[v]:= a[i];
          c2[v]:= i;
        end;
    end;
    
  Quicsort1(j, h);
  
  Quicsort2(j, v);
  
  for i:= 1 to h do
    a[c1[i]]:= b1[i];
    
  for i:= 1 to v do
    a[c2[i]]:= b2[i];
    
  for i:= 1 to N do
    write(a[i],' ');
    
end.

    
