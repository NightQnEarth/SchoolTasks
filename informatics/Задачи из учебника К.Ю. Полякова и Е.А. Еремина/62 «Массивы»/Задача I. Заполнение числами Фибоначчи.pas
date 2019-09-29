Program Den;
var
  N, i:longint;
  a:array [1..40] of longint;
begin

  read(N);
  
  if N = 1 then
    write(1)
  else
    if N = 2 then
        write('1 1')
  else
    begin
    
      a[1]:=1;
      a[2]:=1;
    
      for i:=3 to N do
        a[i]:= a[i-1] + a[i-2];
    
      for i:=1 to N do
        write(a[i],' ');
    end;
end.