function y = isMersenne(x)
y = false;
if isprime(x)
    g=primes(round(x*log(x)));
    for i = 1 : length(g)
        if (2^g(i))-1 == x 
            y=true;
        end
    end
end
end