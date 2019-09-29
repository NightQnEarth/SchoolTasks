Program Den;
var
  A, B:string; t, k, i, x, y, j:integer;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
  t:=0;
  k:=0;
  read(X,Y);
  str(X,A);
  str(Y,B);

  i:=1;

  while i <= length(A) do
    begin
      if A[i]=B[i] then
        begin
          t:=t+1;
          Delete(A,i,1);
          Delete(B,i,1);
        end
          else
            i:=i+1;
      end;
      
        for i:=1 to length(A) do
          for j:=1 to length(B) do
            begin
              if A[i]=B[j] then
                begin
                k:=k+1;
                break;
                end;
            end;


write(t,' ',k);

end.