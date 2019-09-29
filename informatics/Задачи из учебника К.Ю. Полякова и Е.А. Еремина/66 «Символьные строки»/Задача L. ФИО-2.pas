Program Den;
var
  sF, sN, sO, s:string;
  i:longint;
begin

  read(s); i:= 1;

  while s[i] <> ' ' do
    begin
      sF:= sF + s[i];
      i:= i + 1;
    end;

  i:= i + 1;

  while s[i] <> ' ' do
    begin
      sN:= sN + s[i];
      i:= i + 1;
    end;

  delete(sN,2, length(sN) - 1);
  
  i:= i + 1;

  while i <= length(s) do
    begin
      sO:= sO + s[i];
      i:= i + 1
    end;

  delete(sO,2, length(sO) - 1);

  write(sN,'.',sO,'. ',sF);

end.
