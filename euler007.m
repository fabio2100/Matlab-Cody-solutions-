function y = euler007(x)
i=floor(x*log(x));
g=primes(i);
while length(g) ~= x
   g=primes(i);
   i=i+1;
end
y=g(end);
end