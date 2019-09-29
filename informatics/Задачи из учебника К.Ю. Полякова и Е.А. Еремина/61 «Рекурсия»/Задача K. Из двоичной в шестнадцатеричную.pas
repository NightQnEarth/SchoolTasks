Program Den;
var
  s:string;
  i, ch, k, sum, c, d, j, f:longint;
  
procedure hex(sum:longint);
begin
  case sum of
    0..9: write(sum);
    10: write('A');
    11: write('B');
    12: write('C');
    13: write('D');
    14: write('E');
    15: write('F');
  end;
end;
  
begin

  read(s); d:= 1; sum:= 0; f:= 0;

  if s[1] = '-' then
    begin
      for i:= 1 to length(s) - 1 do
        s[i]:= s[i+1];
      write('-');
      f:= 1;
    end;

  if (length(s) - f) mod 4 = 2 then
    begin
      val(s[2],ch,c);
      sum:= sum + ch;
      val(s[1],ch,c);
      sum:= sum + ch * 2;
      hex(sum);
    end
  else
  if (length(s) - f) mod 4 = 1 then
    begin
      val(s[1],ch,c);
      sum:= sum + ch;
      hex(sum);
    end
  else
  if (length(s) - f) mod 4 = 3 then
    begin
      val(s[3],ch,c);
      sum:= sum + ch;
      val(s[2],ch,c);
      sum:= sum + ch * 2;
      val(s[1],ch,c);
      sum:= sum + ch * 4;
      hex(sum);
    end;
  

  i:= ((length(s) - f) mod 4) + 1;

  while i <= (length(s) - f) - (length(s) - f) mod 4 do
    begin

      d:= 1; sum:= 0;

      for j:= i + 3 downto i do
        begin
          val(s[j],ch,c);
          sum:= sum + ch * d;
          d:= d * 2;
        end;

      hex(sum);

      i:= i + 4;
    end;
end.