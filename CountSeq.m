function y = CountSeq(x)
y=[1 x(1)];
j=1;
for i = 2 : length(x)
   if x(i)==x(i-1)
      y(j)=y(j)+1; 
   else
      y=[y 1 x(i)];
      j=j+2;
   end
end
end