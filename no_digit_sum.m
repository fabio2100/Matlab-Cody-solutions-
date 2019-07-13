function total = no_digit_sum(n,m)
x=1:n;
total = 0;
for i = 1 : n
   if (x(i)/m ~=1 && floor(x(i)/10) ~= m && mod(x(i),10)~=m  && mod(x(i),20)~=m&& mod(x(i),30)~=m)
       total = total + x(i);
   end
       
end
end


