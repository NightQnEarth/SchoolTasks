Program Den;
var
  N, a, b, i: longint;

procedure Fib(var a, b:longint);
var g, sum:longint;
begin

  sum:= a + b;
  
  write(sum,' ');
  
  a:= b;
  
  b:= sum;
  
end;

begin

  read(N);
  
  if N = 1 then
    write(1)
  else
  if N = 2 then
    write('1 1')
  else
    begin
      write('1 1 ');

      a:= 1; b:= 1;
      
      for i:= 3 to N do
        Fib(a, b);
        
    end;
    
end.

