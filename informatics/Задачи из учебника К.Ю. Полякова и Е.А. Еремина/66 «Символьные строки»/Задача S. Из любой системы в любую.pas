Program Den;   {Программа переводит целое число N из системы счисления с основанием K в систему счисления с основанием M.}
var
  N:string;
  K, M:longint;


function AnytoDec(K:longint):longint;
var
  i, d, sum, c, f, h:longint;
begin

  d:= 1; sum:= 0; h:= 1;
  
  if N[1] = '-' then
    begin
      delete(N, 1, 1);
      h:= -1
    end;

  for i:= length(N) downto 1 do
    begin
      case N[i] of
        '0'..'9':
          begin
            val(N[i], f, c);
            sum:= sum + d * f
          end;
         
        'A'..'Z': sum:= sum + ( ord(N[i]) - ord('A') + 10 ) * d
        
      end;
      
      d:= d * K
    end;

  AnytoDec:= sum * h

end;


procedure DectoAny (N, B:longint);
var i, g, h, m:longint;
begin

  g:= 1;

  if N < 0 then
    begin
      write('-');
      N:= abs(N);
    end
  else
  if N = 0 then
    write(0);

  while g < N do
    g:= g * B;

  h:= g;

  while g <> 0 do
    begin

      if (g < h) or (h = N) then
        begin
          m:= N div g;
          if m > 9 then
            write ( chr(ord('A') + m - 10) )
          else
            write ( chr(ord('0') + m) )
        end;

      N:= N mod g;

      g:= g div B

    end
end;

begin

  readln(N);
  read(K, M);
  
  DectoAny(AnytoDec(K), M)
  
end.