Program Den;
var
  N, i, k:longint;
  v, s:real;
  a:array [1..30000] of longint;
begin

  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);

  read(N);
  
  s:= 0;

  for i:=1 to N do
    read(a[i]);
    
  for i:=1 to N - 1 do
    s:= s + ((a[i] + a[i+1]) / 2);

  v:= s / (n - 1);
  
  write(v:0:10);
    
end.