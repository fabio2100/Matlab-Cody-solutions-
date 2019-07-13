function y = which_doors_open(n)
x=1:n;
t=not(mod(sqrt(x),1));
y=[];
for i = 1 : n
   if t(i)==1
      y=[y i]; 
   end
end
end