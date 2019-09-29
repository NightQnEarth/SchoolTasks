Program Den;
var
  N:longint;
  
procedure kv (N: longint);
var
  i, j:longint;
begin

  for i:= 1 to N do
    begin
      for j:= 1 to N do
        write('*');
      writeln;
    end;
    
end;

begin

  read(N);
  
  kv(N);
  
end.
