Program Den;
var
  s:string;
  i, ch, k, sum, c, d, j, f:longint;
begin

  read(s); d:= 1; sum:= 0; f:= 0;
  
  if s[1] = '-' then
    begin
      for i:= 1 to length(s) - 1 do
        s[i]:= s[i+1];
      write('-');
      f:= 1;
    end;
    
  if (length(s) - f) mod 3 = 2 then
    begin
      val(s[2],ch,c);
      sum:= sum + ch;
      val(s[1],ch,c);
      sum:= sum + ch * 2;
      write(sum);
    end
  else
  if (length(s) - f) mod 3 = 1 then
    begin
      val(s[1],ch,c);
      sum:= sum + ch;
      write(sum);
    end;

  i:= ((length(s) - f) mod 3) + 1;
  
  while i <= (length(s) - f) - (length(s) - f) mod 3 do
    begin
    
      d:= 1; sum:= 0;
    
      for j:= i + 2 downto i do
        begin
          val(s[j],ch,c);
          sum:= sum + ch * d;
          d:= d * 2;
        end;
        
      write(sum);
      
      i:= i + 3;
    end;
end.