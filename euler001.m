function y = euler001(x)
y=0;
for i = 1 : x-1
   if (mod(i,3)==0||mod(i,5)==0)
       y=y+i;
   end
end
end