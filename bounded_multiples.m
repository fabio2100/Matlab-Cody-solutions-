function multiples = bounded_multiples(f,xlow,xhigh)
multiples = [];
for i = xlow:xhigh
   if mod(i,f)==0
       multiples=[multiples i];
   end
end
end