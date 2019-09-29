Program Den;
var
  a:array [1..10000] of longint;
  i, j, s1, s2, N, j2:longint;
  
procedure sum (var s: longint);
var  g:longint;
begin
  g:= 0;
  while s <> 0 do
    begin
      g:= g + s mod 10;
      
      s:= s div 10;
    end;
  s:= g;
end;

procedure poz (j, j2:longint);
var  t:longint;
begin
  t:= a[j2];
  a[j2]:= a[j];
  a[j]:= t;
end;

  
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    for j:= 1 to N - i do
      begin
        s1:= a[j];
        sum (s1);
        s2:= a[j+1];
        sum (s2);
        if s1 < s2 then
          begin
            j2:= j + 1;
            poz(j, j2);
          end;
      end;

  for i:= 1 to N do
    write(a[i],' ');
    
end.