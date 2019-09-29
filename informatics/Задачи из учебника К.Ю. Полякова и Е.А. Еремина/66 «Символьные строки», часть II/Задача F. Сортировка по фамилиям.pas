Program Den;
var
  input, output:text;
  i, N:longint;
  s:string;
  a, b:array [1..10000] of string;

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
            t:= b[i];
            b[i]:= b[nmin];
            b[nmin]:= t
          end
      end
end;

begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  i:= 0; readln(input, s);

  while s <> '' do
    begin
      i:= i + 1;

      b[i]:= copy(s, 1, 4);

      delete(s, 1, 5);

      a[i]:= s;

      readln(input, s)
    end;

  N:= i; i:= 1;

  vst(i, N);

  for i:= 1 to N do
    writeln(output,i,'. ',b[i], ' ',a[i]);

  Close(input);
  Close(output)
end.