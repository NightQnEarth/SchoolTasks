Program Den;
var
  N, h, i:longint;
  s:string;
  f:boolean;

procedure trio(N:longint;
           var h:longint);
begin

  if N = 0 then
    exit;
    
  if N mod 3 = 2 then
    begin
      h:= h + 1;
      s[h]:= '#';
      N:= N div 3 + 1;
    end
  else
  if N mod 3 = 1 then
    begin
      h:= h + 1;
      s[h]:= '1';
      N:= N div 3;
    end
  else
    begin
      h:= h + 1;
      s[h]:= '0';
      N:= N div 3;
    end;
    
  trio(N, h);
    
end;

begin

  read(N); f:= false;
  
  if N < 0 then
    begin
      N:= abs(N);
      f:= true;
    end
  else
  if N = 0 then
    write(0);
  
  h:= 0;
  
  trio(N, h);
  
  if f then
    for i:= h downto 1 do
      begin
        if s[i] = '#' then
          write(1)
        else
        if s[i] = '1' then
          write('#')
        else
          write(s[i]);
      end
  else
    for i:= h downto 1 do
      write(s[i]);
    
end.