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


function oct(s:string):string;
var
  str0, str1: string;
  i, ch, k, sum, c, d, j, f:longint;
begin
  d:= 1; sum:= 0; f:= 0;

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

  i:= ((length(s) - f) mod 3) + 1; str0:= '';

  while i <= (length(s) - f) - (length(s) - f) mod 3 do
    begin

      d:= 1; sum:= 0;

      for j:= i + 2 downto i do
        begin
          val(s[j],ch,c);
          sum:= sum + ch * d;
          d:= d * 2;
        end;

      str(sum, str1);

      str0:= str0 + str1;

      i:= i + 3;
    end;

  oct:= str0;

end;

begin

  read(s);

  if s[1] = '-' then
    begin
      delete(s, 1, 1);
      write('-');
      write(oct(hex(s)))
    end
  else
    write(oct(hex(s)))

end.