function y = altsum(x)
y=0;
for i = 1 : length(x) 
   if mod(i,2)==0
       y=y-x(i);
   else
       y=y+x(i);
   end
end
end