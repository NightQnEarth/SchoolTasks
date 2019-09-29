Program Den;
var
  s, ss, W:string;
  i, k, j:longint;
  f:boolean;
  
function one(h:char):boolean;
begin
  if ( (h >= 'a') and (h <= 'z') ) or ( (h >= 'A') and (h <= 'Z') ) then
    one:= false
  else
    one:= true
end;

procedure two(var d:char);
var
  q:string;
begin

  q:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  if (pos(d, q)+k) mod 26 = 0 then
    d:= 'Z'
  else
    d:= q[(pos(d, q)+k) mod 26]
end;

procedure three(var u:char);
var
  p:string;
begin

  p:='abcdefghijklmnopqrstuvwxyz';

  if (pos(u, p)+k) mod 26 = 0 then
    u:= 'z'
  else
    u:= p[(pos(u, p)+k) mod 26]
end;

begin

  readln(s);
  
  s:= s + ' ';
  
  W:= '';
  
  while length(s) <> 0 do
    begin
      k:= 0;
      
      while (length(s) <> 0) and (one(s[1])) do
        begin
          W:= W + s[1];
          delete(s, 1, 1)
        end;

      for i:= 1 to length(s) do
        if ( (s[i] >= 'a') and (s[i] <= 'z') ) or ( (s[i] >= 'A') and (s[i] <= 'Z') ) then
          k:= k + 1
        else
          break;

      ss:= copy(s, i - k, k);
      
      if i <> length(s) then
        for j:= 1 to k do
          if (ss[j] >= 'a') and (ss[j] <= 'z') then
            three(ss[j])
          else
          if (ss[j] >= 'A') and (ss[j] <= 'Z') then
            two(ss[j]);
          
      delete(s, i - k, k);
      
      W:= W + ss
    end;
    
  delete(W, length(W), 1);
    
  write(W)
  
end.