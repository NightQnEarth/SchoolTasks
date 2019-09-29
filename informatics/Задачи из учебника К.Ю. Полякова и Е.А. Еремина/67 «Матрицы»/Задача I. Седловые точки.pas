Program Den;
var
  a, c, b:array [1..100, 1..100] of longint;
  i, j, N, h, t, g, min, max, M:longint;
  f:boolean;
begin

  read(N, M);
  
  min:= 0;
  
  for i:= 1 to N do
    for j:= 1 to M do
      begin
        read(a[i,j]);
        if a[i,j] > min then
          begin
            min:= a[i,j];
            b[1,1]:= i;
            b[1,2]:= j
          end
      end;
      
  min:= min + 1;
      
  g:= min; h:= 0;
  
  for i:= 1 to N do
    begin
      min:= g;
      
      h:= h + 1;
      
      for j:= 1 to M do
        if a[i,j] < min then
          begin
            min:= a[i,j];
            b[h,1]:= i;
            b[h,2]:= j
          end;
          
      for j:= 1 to M do
        if (a[i,j] = min) and ((i <> b[h,1]) or (j <> b[h,2])) then
          begin
            h:= h + 1;
            b[h,1]:= i;
            b[h,2]:= j
          end
    end;
    
  t:= 0;
    
  for i:= 1 to M do
    begin
      max:= 0;
      
      t:= t + 1;
      
      for j:= 1 to N do
        if a[j,i] > max then
          begin
            max:= a[j,i];
            c[t,1]:= j;
            c[t,2]:= i
          end;
          
      for j:= 1 to N do
        if (a[j,i] = max) and ((j <> c[t,1]) or (i <> c[t,2])) then
          begin
            t:= t + 1;
            c[t,1]:= j;
            c[t,2]:= i
          end
    end;
    
  f:= true;
    
  for i:= 1 to h do
    for j:= 1 to t do
      if (b[i,1] = c[j,1]) and (b[i,2] = c[j,2]) then
        begin
          writeln(b[i,1],' ',b[i,2]);
          f:= false
        end;
        
  if f then
    write(0)
      
end.