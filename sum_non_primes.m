function y = sum_non_primes(x)
y = 0;
for i = 1 : x
    if (isprime(i)==0)
        y = y + i;
    end
end
end