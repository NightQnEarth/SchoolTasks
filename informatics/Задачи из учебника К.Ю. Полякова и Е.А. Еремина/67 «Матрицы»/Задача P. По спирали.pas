Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, r, P, N0, M0:longint;
  f:boolean;
begin

  read(N, M);
  
  r:= 0; i:= 1; j:= 1; f:= true;
  
  N0:= N; M0:= M; P:= 0;

  while f do
    begin

      while (j <= M) and f do
        begin
          r:= r + 1;
          
          a[i,j]:= r;
          
          j:= j + 1;
          
          if r = N0 * M0 then
            f:= false
        end;

      j:= j - 1; i:= i + 1;
      
      while (i <= N) and f do
        begin
          r:= r + 1;

          a[i,j]:= r;
          
          i:= i + 1;
          
          if r = N0 * M0 then
            f:= false
        end;

      i:= i - 1;  j:= j - 1;
      
      M:= M - 1; N:= N - 1; P:= P + 1;
      
      while (j >= P) and f do
        begin
          r:= r + 1;
          
          a[i,j]:= r;
          
          j:= j - 1;
          
          if r = N0 * M0 then
            f:= false
        end;

      j:= j + 1; i:= i - 1;
        
      while (i > P) and f do
        begin
          r:= r + 1;
          
          a[i,j]:= r;
          
          i:= i - 1;
          
          if r = N0 * M0 then
            f:= false
        end;
        
      i:= i + 1; r:= r - 1
    end;
    
  for i:= 1 to N0 do
    begin
      for j:= 1 to M0 do
        write(a[i,j]:6,' ');
      
      writeln
    end
end.