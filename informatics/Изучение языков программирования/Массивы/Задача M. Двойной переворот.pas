Program Den;
var
  m:array [1..10000] of longint;
  i, j, N, A, B, C, D, t:longint;
begin

  read(N,A,B,C,D);
  
  for i:= 1 to N do
    m[i]:= i;
    
  i:= A;
  j:= B;
  
  while i < j do
    begin
      t:= m[i];
      m[i]:= m[j];
      m[j]:= t;
      i:= i + 1;
      j:= j - 1
    end;
    
  i:= C;
  j:= D;

  while i < j do
    begin
      t:= m[i];
      m[i]:= m[j];
      m[j]:= t;
      i:= i + 1;
      j:= j - 1
    end;
    
  for i:= 1 to N do
    write(m[i],' ')
    
end.