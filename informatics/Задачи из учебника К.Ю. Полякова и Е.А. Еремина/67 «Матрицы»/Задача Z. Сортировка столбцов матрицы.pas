Program Den;
var
  a, w:array [1..100, 1..100] of longint;
  c:array [1..100, 1..2] of longint;
  b:array [1..100] of longint;
  i, j, N, M, sum, h:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);
      
  for j:= 1 to M do
    begin
      sum:= 0;
      
      for i:= 1 to N do
        sum:= sum + a[i,j];
      
      c[j,1]:= sum; c[j,2]:= j;
    end;
    
  for h:= 1 to M - 1 do
    for i:= M - 1 downto h do
      if c[i+1,1] > c[i,1] then
        begin
          for j:= 1 to 2 do
            b[j]:= c[i,j];
            
          for j:= 1 to 2 do
            c[i,j]:= c[i+1,j];
            
          for j:= 1 to 2 do
            c[i+1,j]:= b[j]
        end;
     
   for i:= 1 to M do
     for j:= 1 to N do
       w[j,i]:= a[j,c[i,2]];
       
   for i:= 1 to N do
     begin
       for j:= 1 to M do
         begin
           a[i,j]:= w[i,j];
           write(a[i,j],' ')
         end;
         
       writeln
    end
end.