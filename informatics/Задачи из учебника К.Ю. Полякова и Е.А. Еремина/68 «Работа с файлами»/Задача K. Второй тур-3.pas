Program Den;
var
  input, output:text;
  K, a, c, i, j, N, h:longint;
  s, ss, s1, s2, t:string;
  r:array [1..10000] of longint;
  b, m, m1:array [1..10000] of string;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  readln(input, K);

  i:= 0; h:= 0;

  while not eof(input) do
    begin
      readln(input, s);

      ss:= s;

      for i:= length(ss) downto 1 do
        if ss[i] = ' ' then
          break;

      delete(ss, 1, i);

      val(ss, a, c);

      if a > K then
        begin
          s1:= copy(s, 1, pos(' ', s) - 1);

          delete(s, 1, pos(' ', s));

          s2:= concat(s[1], '.');

          s:= '';

          s:= concat(s2,' ',s1);

          h:= h + 1;

          b[h]:= s;

          m[h]:= s1;
          m1[h]:= s1;
        end
    end;
    
  N:= h;
  
  for i:= 1 to N - 1 do
    for j:= N - 1 downto i do
      if m[j+1] < m[j] then
        begin
          t:= m[j];
          m[j]:= m[j+1];
          m[j+1]:= t
        end;
        
  h:= 0;
        
  for i:= 1 to N do

      for j:= 1 to N do  begin
        if m[i] = m1[j] then
          begin
            h:= h + 1;
            r[h]:= j;
            m1[j]:= '';
            break
          end
    end;
        
  writeln(output, N);
        
  for i:= 1 to N do
    writeln(output, i, ') ', b[r[i]]);

  Close(input);
  Close(output)

end.