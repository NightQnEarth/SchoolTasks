Program Den;
var
  s, s2:string;
  a, sum, c:longint;
begin

  read(s);
  
  sum:= 0;
  
  while pos('+', s) <> 0 do
    begin
      s2:= copy(s, 1, pos('+',s));
  
      delete(s2, length(s2), 1);
      
      val(s2, a, c);
      
      sum:= sum + a;
      
      delete(s, 1, pos('+',s))
    end;
    
  val(s, a, c);
  
  sum:= sum + a;
  
  write(sum)
end.