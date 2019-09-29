Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, r:longint;
begin

  read(N, M);
  
  r:= 1;
  
  a[1,1]:= 1;

  i:= 2; j:= 1;
  
  while i * j <= N * M do
    begin
      if (i + j) mod 2 <> 0 then
        begin
          r:= r + 1;

          a[i,j]:= r;
          
          if (i - 1 <> 0) and (j < M) then
            begin
              i:= i - 1;
            
              j:= j + 1
            end
          else
            begin
              if j < M then
                j:= j + 1
              else
                i:= i + 1
            end
        end
      else
        begin
          r:= r + 1;
          
          a[i,j]:= r;

          if (j - 1 <> 0) and (i < N) then
            begin
              i:= i + 1;
              
              j:= j - 1
            end
          else
            begin
              if i < N then
                i:= i + 1
              else
                j:= j + 1
            end
        end
    end;   writeln;
    
    for i:= 1 to N do
      begin
        for j:= 1 to M do
          write(a[i,j]:6,' ');
          
        writeln
      end;
end.