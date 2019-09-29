Program Den;
var
  a:array [1..10000] of longint;
  i, N, max, k, g:longint;
begin

  read(N);
  
  max:= 1;
  
  k:= 1;
  
  for i:= 1 to N do
    read(a[i]);

  g:= a[1];

  for i:= 1 to N - 1 do
    if a[i] = a[i+1] then
      begin
        k:= k + 1;
        if k > max then
          begin
            max:= k;
            g:= a[i];
          end;
      end
    else
      k:= 1;
      
  write(g,' ',max);

end.
          