Program Den;
var
  A, B, NOD, g:longint;
  NOK:real;
begin
  {Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);}
  
  read(A, B);
  
  g:= a * b;
  
  while a * b <> 0 do
    if a > b then
      a:= a mod b
    else
      b:= b mod a;
      
  NOD:= a + b;
  
  NOK:= g / NOD;
  
  write(round(NOK))
  
end.