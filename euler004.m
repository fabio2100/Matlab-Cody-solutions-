function y = euler004(x)
for i=x-1:-1:1
   r=x*i;
   s=num2str(r);
   s2=fliplr(s);
   if (strcmp(s,s2)==1)
       y=str2num(s);
       break;
   end
end
end