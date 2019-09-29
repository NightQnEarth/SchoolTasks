Program Den;
var
  A, N, i, g:longint;
begin

  read(A,N);
  
  g:=A;
  
  for i:=2 to N do
    A:=A*g;
    
  write(A);
  
end.
    
  
  
  