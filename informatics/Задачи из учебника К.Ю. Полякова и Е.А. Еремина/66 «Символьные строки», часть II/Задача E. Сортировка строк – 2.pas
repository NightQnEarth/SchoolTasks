Program Den;
var
  input, output:text;
  i, N:longint;
  s:string;
  a:array [1..10000] of string;

procedure vst(L, R:longint);
var
  i, j, nmin:longint;
  t: string;
begin

  for i:= L to R - 1 do
      begin

        nmin:= i;

        for j:= i + 1 to R do
          if a[j] < a[nmin] then
            nmin:= j;

        if i <> nmin then
          begin
            t:= a[i];
            a[i]:= a[nmin];
            a[nmin]:= t;
          end
      end
end;

begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  i:= 0; readln(input, s);

  while s <> '' do
    begin
      delete(s, 1, pos(' ',s));

      i:= i + 1;

      a[i]:= s;

      readln(input, s)
    end;

  N:= i; i:= 1;

  vst(i, N);

  for i:= 1 to N do
    writeln(output,i,'. ',a[i]);

  Close(input);
  Close(output)
end.