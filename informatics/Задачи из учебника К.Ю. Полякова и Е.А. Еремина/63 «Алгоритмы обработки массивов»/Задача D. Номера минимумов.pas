Program Den;
var
  N, i, min:longint;
  m:array [1..10000] of longint;
begin

  read(N);
  
  read(m[1]);
  
  min:= m[1];
  
  if N > 1 then
    for i:=2 to N do
      begin
        read(m[i]);
        if m[i] < min then
            min:= m[i];
      end;


  for i:= 1 to N do
    if (m[i] = min) then
      write(i,' ') ;
      
end.

      