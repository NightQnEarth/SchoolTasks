{Program Den;
var
  N, i, k, s, b:longint;
begin

  read(N);
  
  k:=0;
  
  for b:=2 to N do
    begin
    
      s:=1;
      
      for i:=2 to trunc(sqrt(b))  do
        if b mod i = 0 then
          s:=s + i;

      if s > 1 then
        begin
          
          for i:= trunc(sqrt(b)) +1 to b div 2 do
            if b mod i = 0 then
              s:=s + i;

          if b = s then
            begin
              k:=1;
              write(b,' ');

            end;
        end;
    end;
    
    
  if k = 0 then write(0);
    
end.}

{¬ообще до сих пор в мире не обнаружено нечетных совершенных чисел}
{“ак же по мере возрастани€ натуральных чисел совершенных чисел становитс€ всЄ меньше: 6, 28, 496, 8128, 33550336, 8589869056, 137438691328, 2305843008139952128, 2658455991569831744654692615953842176, 191561942608236107294793378084303638130997321548169216 ... }
Program Den;
var
  N:longint;
begin

  read(N);
  
  if N < 6 then
    write(0)
  else
    if N < 28 then
      write(6)
    else
      if N < 496 then
        write('6 28')
      else
        if N < 8128 then
          write('6 28 496')
        else
          if N < 33550336 then
            write('6 28 496 8128')
          else
            if N < 8589869056 then
              write('6 28 496 8128 33550336');
end.

    
