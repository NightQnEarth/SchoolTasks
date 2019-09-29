Program Den;
var
  N, i, min, max, g, f:longint;
  a:array [1..10000] of longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
  
  i:= 1;
  
  f:= 0;
  
  while (f = 0) and (i <= N) do
    begin
      if (a[i] mod 2 = 0) and (a[i] > 0) then
        f:= 1;
      i:= i + 1;
    end;
    
  if f = 0 then
    write('-1 -1')
  else
    begin
    
      g:= i - 1;
      min := a[g];
      max:= 0;
  
      for i:= g to N do
        if (a[i] < min) and (a[i] mod 2 = 0) and (a[i] > 0) then
          min:= a[i]
        else
          if (a[i] > max) and (a[i] mod 2 = 0) and (a[i] > 0) then
            max:= a[i];

        write(min,' ',max)
    end;

end.
  
