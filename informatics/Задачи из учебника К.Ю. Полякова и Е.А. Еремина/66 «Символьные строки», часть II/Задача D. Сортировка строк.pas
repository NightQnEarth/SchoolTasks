Program Den;
var
  a:array [1..10000] of string;
  N, i, j:longint;
  s:string;

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
          end;
      end;
end;

begin

  readln(N);

  for i:= 1 to N do
    begin
      readln(s);

      delete(s,1,pos(' ',s));

      a[i]:= s
    end;

  i:= 1; j:= N;

  vst(i, j);

  for i:= 1 to N do
    writeln(i,'. ',a[i])
end.