Program Den;
var
  s, sN, sO:string;
  i:longint;
begin

  read(s); i:= 1;
  
  while s[i] <> ' ' do
    begin
      sN:= sN + s[i];
      i:= i + 1;
    end;
    
  delete(sN,2, length(sN) - 1);

  i:= i + 1;
    
  while s[i] <> ' ' do
    begin
      sO:= sO + s[i];
      i:= i + 1;
    end;
    
  delete(sO,2, length(sO) - 1);
    
  delete(s, 1, i);
  
  write(s,' ',sN,'.',sO,'.');
  
end.

