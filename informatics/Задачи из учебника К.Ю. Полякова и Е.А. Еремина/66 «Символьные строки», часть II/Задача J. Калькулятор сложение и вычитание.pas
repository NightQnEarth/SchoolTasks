Program Den;
var
  s:string;
  i, N, a, sum, c:longint;
  
procedure num(s:string);
begin

  while (s[i] <> '+') and (s[i] <> '-') and (i <= length(s)) do
    i:= i + 1;
    
  i:= i - 1
      
end;

begin

  read(s);
  
  i:= 1;
  
  sum:= 0;
  
  num(s);
  
  val(copy(s, 1, i), a, c);
  
  sum:= sum + a;
  
  delete(s, 1, i);
  
  while length(s) <> 0 do
    if s[1] = '+' then
      begin
        
        delete(s, 1, 1);
    
        i:= 1; num(s);
      
        val(copy(s, 1, i), a, c);
          
        sum:= sum + a;
        
        delete(s, 1, i)
      end
    else
    if s[1] = '-' then
      begin
        
        delete(s, 1, 1);
          
        i:= 1; num(s);
          
        val(copy(s, 1, i), a, c);
          
        sum:= sum - a;
        
        delete(s, 1, i)
      end;
      
  write(sum)
end.