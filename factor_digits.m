function p = factor_digits(n)
fac=factor(n);
pri=primes(max(fac));
for i = 1 : length(pri)
   g=find(pri(i)==fac);
   p(i)=length(g);
end
p=fliplr(p);
end