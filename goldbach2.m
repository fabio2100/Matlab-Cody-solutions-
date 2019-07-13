function c = goldbach2(n)
g=primes(n);
m=nchoosek(g,2)';
t=sum(m);
c=sum(t==n);
if isprime(n/2)
    c=c+1;
end
end