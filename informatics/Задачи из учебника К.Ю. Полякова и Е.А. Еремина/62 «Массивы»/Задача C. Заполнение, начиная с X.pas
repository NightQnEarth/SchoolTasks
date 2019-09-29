Program Den;
var
  a:array [1..50000] of longint; X, N, i:longint;
begin

  read(X,N);
  
  for i:= 1 to N do
    begin
      a[i]:=X;
      X:=X+1;
      write(a[i],' ');
    end;
    
end.



    
  