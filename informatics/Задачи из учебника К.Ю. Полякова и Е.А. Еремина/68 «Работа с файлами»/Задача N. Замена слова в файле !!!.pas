Program Den;
var
  input, output:text;
  s1, snew, s, s2, snew2:string;
  strOld, strNew: array [1..18] of string;
  i, t:longint;
  f:boolean;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  readln(input, s1); s2:= Upcase(s1[1]) + copy(s1, 2, length(s1) - 1);
  
  readln(input, snew); snew2:= Upcase(snew[1]) + copy(snew, 2, length(s1) - 1);
  
  strOld[1]:= s1; strOld[2]:= s1 + ','; strOld[3]:= s1 + ':'; strOld[4]:= s1 + ';'; strOld[5]:= s1 + '!'; strOld[6]:= s1 + '?'; strOld[7]:= s1 + '.';
  strOld[8]:= s2; strOld[9]:= s2 + ','; strOld[10]:= s2 + ':'; strOld[11]:= s2 + ';'; strOld[12]:= s2 + '!'; strOld[13]:= s2 + '?'; strOld[14]:= s2 + '.'; strOld[15]:= s2 + '«'; strOld[16]:= s2 + '»'; strOld[17]:= s1 + '«'; strOld[18]:= s1 + '»';
  
  strNew[1]:= snew; strNew[2]:= snew + ','; strNew[3]:= snew + ':'; strNew[4]:= snew + ';'; strNew[5]:= snew + '!'; strNew[6]:= snew + '?'; strNew[7]:= snew + '.';
  strNew[8]:= snew2; strNew[9]:= snew2 + ','; strNew[10]:= snew2 + ':'; strNew[11]:= snew2 + ';'; strNew[12]:= snew2 + '!'; strNew[13]:= snew2 + '?'; strNew[14]:= snew2 + '.'; strNew[15]:= snew2 + '«'; strNew[16]:= snew2 + '»'; strNew[17]:= snew + '«'; strNew[18]:= snew + '»';
  
  while not eof(input) do
    begin
      readln(input, s);
      for i:= 1 to 18 do
        begin
          f:= true;
          while ( pos(strOld[i], s) <> 0 ) and f do
            if (   ( pos(strOld[i] ,s) = 1 ) and ( s[pos(strOld[i] ,s)+length(strOld[i])] = ' ' )   ) or             {В начале строки}
          
               (   ( s[pos(strOld[i] ,s)-1] = ' ' ) and ( s[pos(strOld[i] ,s)+length(strOld[i])] = ' ' )   ) or     {По середине}
             
               (   strOld[i] = s   ) or                                                                             {Равно строке}
             
               (   ( s[pos(strOld[i] ,s)-1] = ' ' ) and ( pos(strOld[i] ,s) + length(strOld[i]) = length(s) + 1 )   ) then  {В конце строки}
             
                 begin

                   t:= pos(strOld[i] ,s);

                   delete(s, pos(strOld[i] ,s), length(strOld[i]) );
                 
                   insert(strNew[i], s , t)
                 end
            else
              f:= false
        end;
      if eof(input) then
        write(output, s)
      else
        writeln(output, s)
    end;
    
  Close(input);
  Close(output)
end.