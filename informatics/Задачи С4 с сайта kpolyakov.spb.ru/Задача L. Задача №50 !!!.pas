Program Den;
var
  N, i, t:longint;
  a, b:real;
  fa, fb, f:boolean;
  input:text;
begin

  Assign(input, 'input.txt'); reset(input);

  readln(input, N);

  readln(input, a);

  fa:= false; fb:= false; t:= 1; f:= true;

  for i:= 2 to N do
    begin
      readln(input, b);

      if (a < 1) and (a < b) then
        begin
          a:= b;
          t:= i
        end
      else
      if (a >= 1) and (b >= 1) then
        begin
          if not fa then
            begin
              write(i-1,' ');
              fa:= true;
              f:= false
            end;
          if not fb then
            begin
              write(i,' ');
              fa:= true;
              f:= false
            end
        end
      else
      if (a >= 1) and (b < 1) and not fa then
        begin
          write(i-1,' ');
          fa:= true;
          f:= false
        end
    end;

  if f then
    write(t);

  Close(input)
end.