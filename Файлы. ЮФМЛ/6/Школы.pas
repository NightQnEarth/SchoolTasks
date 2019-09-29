Program Den;
var
  Fin:text;
  s, str:string;
  i, k, N, KL, c, max:longint;
  a, b:array [1..5] of longint;
  f:boolean;
begin

  Assign(Fin, 'Fin.txt'); reset(Fin);
  
  while not eof(Fin) do
    begin
      readln(Fin, s);
      
      for i:= 1 to 2 do
        delete(s, 1, pos(' ',s));
        
      str:='';
      
      insert(copy(s, 1, pos(' ',s)-1), str, 1);
      
      val(str, N, c);
      
      f:= true;
      
      for i:= 1 to 5 do
        if a[i] = N then
          begin
            f:= false;
            break
          end;
          
      if f then
        begin
          for i:= 1 to 5 do
            if a[i] = 0 then
              break;
              
          a[i]:= N
        end;

      delete(s, 1, pos(' ',s));
      
      val(s, KL,c);
      
      if KL > 4 then
        b[i]:= b[i] + 1;
    end;
    
  max:= b[1];
  
  for i:= 1 to 5 do
    if b[i] > max then
      begin
        max:= b[i];
        break
      end;
      
  write(a[i]);
  Close(Fin)
  
end.