Program Den;
var
  s:string;

function hex(s:string):string;
var
  str:string;
  i:longint;
begin

  str:= '';

  for i:= 1 to length(s) do
    case s[i] of
      '0': str:= str + '0000'; '1': str:= str + '0001'; '2': str:= str + '0010'; '3': str:= str + '0011';
      '4': str:= str + '0100'; '5': str:= str + '0101'; '6': str:= str + '0110'; '7': str:= str + '0111';
      '8': str:= str + '1000'; '9': str:= str + '1001'; 'A': str:= str + '1010'; 'B': str:= str + '1011';
      'C': str:= str + '1100'; 'D': str:= str + '1101'; 'E': str:= str + '1110'; 'F': str:= str + '1111'
    end;
    
  if s <> '0' then
    while str[1] = '0' do
      delete(str, 1, 1)
  else
    str:= '0';
      
  hex:= str;
  
end;

begin

  read(s);

  if s[1] = '-' then
    begin
      delete(s, 1, 1);
      write('-');
      write(hex(s))
    end
  else
    write(hex(s))
    
end.