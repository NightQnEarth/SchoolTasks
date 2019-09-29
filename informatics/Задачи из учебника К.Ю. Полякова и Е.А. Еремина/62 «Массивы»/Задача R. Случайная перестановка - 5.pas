Program Den;
var
  i, N, k, j, t, x:longint;
  a1, a2:array [1..10000] of longint;
begin

  read(N);

  randomize;
  
  x:= 6;
  
  if N >= 6 then
    begin

      for i:=1 to N - 5 do
        begin
          a1[i]:= x;
          x:= x + 1;
        end;

      for i:=1 to N - 5 do
        begin
          k:= random(N - 5) + 1;
          j:= random(N - 5) + 1;
          t:= a1[k];
          a1[k]:= a1[j];
          a1[j]:= t;
        end;
        
      for i:=1 to 4 do
        a2[i]:= i;

      for i:=1 to 4 do
        begin
          k:= random(4) + 1;
          j:= random(4) + 1;
          t:= a2[k];
          a2[k]:= a2[j];
          a2[j]:= t;
        end;

      write('5 ');

      for i:=1 to N - 5 do
        write(a1[i],' ');
        
      for i:=1 to 4 do
        write(a2[i],' ');
    
  end
  
  else
  
    begin
  
      for i:=1 to 4 do
        a2[i]:= i;

      for i:=1 to 4 do
        begin
          k:= random(4) + 1;
          j:= random(4) + 1;
          t:= a2[k];
          a2[k]:= a2[j];
          a2[j]:= t;
        end;

      write('5 ');

      for i:=1 to 4 do
        write(a2[i],' ');
        
    end;

end.