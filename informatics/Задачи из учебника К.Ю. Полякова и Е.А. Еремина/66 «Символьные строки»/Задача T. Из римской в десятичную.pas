Program Den;
var
  N:string;
  i, sum, a1, a2, f:longint;
begin

  read(N);

  case N[length(N)] of
    'I': sum:= 1;
    'V': sum:= 5;
    'X': sum:= 10;
    'L': sum:= 50;
    'C': sum:= 100;
    'D': sum:= 500;
    'M': sum:= 1000
  end;
  
  a1:= sum; f:= 1;

  for i:= length(N) - 1 downto 1 do
    begin
      case N[i] of
        'I': a2:= 1;
        'V': a2:= 5;
        'X': a2:= 10;
        'L': a2:= 50;
        'C': a2:= 100;
        'D': a2:= 500;
        'M': a2:= 1000
      end;

      if a2 < a1 then
        begin
          sum:= sum - a2;
          f:= -1
        end
      else
      if a2 > a1 then
        begin
          sum:= sum + a2;
          f:= 1
        end
      else
        sum:= sum + f * a2;
        
      a1:= a2
    end;
    
  write(sum)
  
end.