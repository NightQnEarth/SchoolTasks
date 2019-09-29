Program Den;
var
  N, V, S, i, max, k:longint; a1, a2:array[1..1000] of longint;
begin

  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);

  read(N);
  
  max:=0;
  
  k:=0;
  
  for i:=1 to N do
    begin
      read(a1[i],a2[i]);
      if (a1[i] > max) and (a2[i] = 1) then
        begin
          max:=a1[i];
          k:=i;
        end;
    end;
    
  if k = 0 then
    write(-1)
  else
    write(k);
  
end.
