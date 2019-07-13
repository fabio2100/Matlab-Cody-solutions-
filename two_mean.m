function y = two_mean(x)
for i = 1 : length(x)-1
   y(i)=(x(i)+x(i+1))/2; 
end
end