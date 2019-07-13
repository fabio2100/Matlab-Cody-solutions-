function total = number_sum ( str )
total = 0; 
str2 = regexp(str,'\D','split');
for i = 1 : length(str2)
   if isempty(char(str2(i)))
   else
      p=char(str2(i));
      g=str2num(p);
      total = total + g;
   end
end
end