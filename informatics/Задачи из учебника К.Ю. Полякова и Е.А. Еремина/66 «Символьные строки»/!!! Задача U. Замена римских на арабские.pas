Program Den;
var
  s, N:string;
  j, h, c, c1:longint;
  ff:boolean;
  
function RimtoDec(N:string):string;
var
  i, sum, a1, a2, f:longint;
  st:string;
begin

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
    
  str(sum, st);

  RimtoDec:= st;
  
end;

procedure cas(ch:char);
begin
  case ch of
    'I':  ff:= true;
    'V':  ff:= true;
    'X':  ff:= true;
    'L':  ff:= true;
    'C':  ff:= true;
    'D':  ff:= true;
    'M':  ff:= true
  end
end;

function cas2(ch:char):boolean;
begin
  cas2:= false;
  case ch of
    'I':  cas2:= true;
    'V':  cas2:= true;
    'X':  cas2:= true;
    'L':  cas2:= true;
    'C':  cas2:= true;
    'D':  cas2:= true;
    'M':  cas2:= true
  end
end;

begin

  read(s); j:= 0;
  
  while j <= length(s) do
    begin
      j:= j + 1;
    
      ff:= false;
      
      cas(s[j]);
      
      if ff and (j > 1) and ( s[j-1] = ' ') and ( (j = length(s)) or (s[j+1] = ' ') or cas2(s[j+1]) ) then
        begin
          h:= j;
          while ff and (j <= length(s)) do
            begin
              ff:= false;
              j:= j + 1;
              if j <= length(s) then
                cas(s[j])
            end;
            N:= copy(s, h, j - h);

            val(RimtoDec(N), c1, c);
            if (c1 > 0) and (c1 < 4000) then
              begin
                delete(s, h, j - h);
                insert(RimtoDec(N), s, h)
              end
        end
      else
      if ff and (j = 1) then
        begin
          h:= 1;
          while ff and (j <= length(s)) do
            begin
              ff:= false;
              j:= j + 1;
              if j <= length(s) then
                cas(s[j])
            end;
          if (s[j] = ' ') or ( (j > length(s)) and cas2(s[j-1]) ) then
            begin
              N:= copy(s, h, j - h);

              val(RimtoDec(N), c1, c);
              if (c1 > 0) and (c1 < 4000) then
                begin
                  delete(s, h, j - h);
                  insert(RimtoDec(N), s, h)
                end
            end
      end
    end;
    
  write(s)
  
end.