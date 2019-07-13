function b = find_palindrome(a)  
a1=num2str(a);
a2=fliplr(a1);
while strcmp(a1,a2)==0
   b=str2num(a1)+str2num(a2);
   a1=num2str(b);
   a2=fliplr(a1);
end
end
