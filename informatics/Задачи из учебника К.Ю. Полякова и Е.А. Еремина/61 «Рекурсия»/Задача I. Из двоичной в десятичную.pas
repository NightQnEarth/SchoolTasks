Program Den;
var
  s:string;
  sum, i, st, c, ch, j:longint;
  f:boolean;
begin

  read(s);
  
  f:= false; sum:= 0; st:= 1; j:= 1;

  if s[1] = '-' then
    begin
      f:= true;
      j:= 2;
    end;
  
  for i:= length(s) downto j do
    begin
      val(s[i],ch,c);
      sum:= sum + ch * st;
      st:= st * 2;
    end;
    
  if f then
    begin
      sum:= sum * (-1);
      write(sum);
    end
  else
    write(sum);
  
end.